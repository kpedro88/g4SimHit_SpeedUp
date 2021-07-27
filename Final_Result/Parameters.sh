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
                my_array=(5.0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5)
        elif [ "$varnames" = "RusRoEcalGamma" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoHcalGamma" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoMuonIronGamma" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoPreShowerGamma" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoCastorGamma" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoWorldGamma" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoEcalNeutron" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoHcalNeutron" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoMuonIronNeutron" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoPreShowerNeutron" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoCastorNeutron" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        elif [ "$varnames" = "RusRoWorldNeutron" ]; then
                my_array=(0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0)
        else
                echo "the entered parameter is not found"
        fi
done
