FROM resin/%%RESIN_MACHINE_NAME%%-python

# use apt-get if you need to install dependencies,
# for instance if you need ALSA sound utils, just uncomment the lines below.
# RUN apt-get update && apt-get install -yq \
#    alsa-utils libasound2-dev && \
#    apt-get clean && rm -rf /var/lib/apt/lists/*


# This will copy all files in our root to the working  directory in the container
COPY src/ /usr/src/app

# switch on systemd init system in container
ENV INITSYSTEM on

# main.py will run when container starts up on the device
CMD ["python","/usr/src/app/main.py"]
