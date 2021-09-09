#!/bin/bash

# declare the array
declare -A parameters

# declare the list of values
RusRo_vals=(0.1 0.01 0.001 0.0001 0.00001)
RusRo_energy=(200 250 300 350 400 450 500 550 600 650 700 750 800)

# assigning array elements a specific value list
parameters[RusRoGammaEnergyLimit]=RusRo_energy[@]
#parameters[RusRoEcalGamma]=RusRo_vals[@]
#parameters[RusRoHcalGamma]=RusRo_vals[@]
#parameters[RusRoMuonIronGamma]=RusRo_vals[@]
parameters[RusRoNeutronEnergyLimit]=RusRo_energy[@]
#parameters[RusRoHcalNeutron]=RusRo_vals[@]
#parameters[RusRoEcalNeutron]=RusRo_vals[@]
#parameters[RusRoMuonIronNeutron]=RusRo_vals[@]
#parameters[RusRoElectronEnergyLimit]=RusRo_energy[@]
#parameters[RusRoProtonEnergyLimit]=RusRo_energy[@]
