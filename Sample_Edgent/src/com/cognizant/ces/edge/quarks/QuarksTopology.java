package com.cognizant.ces.edge.quarks;

import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

import quarks.providers.direct.DirectProvider;
import quarks.topology.TStream;
import quarks.topology.Topology;

public class QuarksTopology {
    
    private static final Logger LOGGER = Logger.getLogger(QuarksTopology.class.getName());
    private static String strApp = "Starting quarks application";

    public static void main(String[] args) {
	LOGGER.info(strApp);
	TempSensor sensor = new TempSensor();
	DirectProvider directProvider = new DirectProvider();
	Topology topology = directProvider.newTopology();
	TStream<Double> tempReadings = topology.poll(sensor, 1, TimeUnit.SECONDS);

	TStream<Double> filteredReadings = tempReadings.filter(reading -> reading < 50 || reading > 80);

	filteredReadings.print();
	directProvider.submit(topology);
    }

}
