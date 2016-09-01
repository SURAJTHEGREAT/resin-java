package com.cognizant.ces.edge.quarks;

import java.util.Random;

import quarks.function.Supplier;

/**
 * Every time get() is called, TempSensor generates a temperature reading.
 */
public class TempSensor implements Supplier<Double> {

    private static final long serialVersionUID = 1L;
    
    double currentTemp = 15.0;
    Random rand;

    TempSensor(){
        rand = new Random();
    }

    @Override
    public Double get() {
        // Change the current temperature some random amount
        double newTemp = rand.nextGaussian() + currentTemp;
        currentTemp = newTemp;
        return currentTemp;
    }
}