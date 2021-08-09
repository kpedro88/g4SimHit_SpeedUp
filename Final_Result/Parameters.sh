#!/bin/bash

for varnames in $@; do
        if [ "$varnames" = "EnergyThSimple" ]; then
                my_array=(0.015 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5)
        elif [ "$varnames" = "DeltaChordSimple" ]; then
                my_array=(0.1 0.05 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5)
        elif [ "$varnames" = "DeltaOneStepSimple" ]; then
                my_array=(0.1 0.05 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5)
        elif [ "$varnames" = "DeltaIntersectionSimple" ]; then
                my_array=(0.01 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5)
        elif [ "$varnames" = "RusRoGammaEnergyLimit" ]; then
                my_array=(5.0 10.0 40.0 60.0 100.0 120.0)
        elif [ "$varnames" = "RusRoEcalGamma" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoHcalGamma" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoMuonIronGamma" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoPreShowerGamma" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoCastorGamma" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoWorldGamma" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoNeutronEnergyLimit" ]; then
                my_array=(5.0 10.0 40.0 60.0 100.0 120.0)
        elif [ "$varnames" = "RusRoEcalNeutron" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoHcalNeutron" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoMuonIronNeutron" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoPreShowerNeutron" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoCastorNeutron" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        elif [ "$varnames" = "RusRoWorldNeutron" ]; then
                my_array=(0.1 0.01 0.001 0.0001 0.00001)
        else
                echo "the entered parameter is not found"
        fi
done
