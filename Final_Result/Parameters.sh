#!/bin/bash

# declare the array
declare -A parameters

# declare the list of values
RusRo_vals=(0.1 0.01 0.001 0.0001 0.00001)
RusRo_energy=(5.0 10.0 40.0 60.0 100.0 120.0)

# assigning array elements a specific value list
parameters[RusRoGammaEnergyLimit]=RusRo_energy[@]
parameters[RusRoEcalGamma]=RusRo_vals[@]
parameters[RusRoHcalGamma]=RusRo_vals[@]
parameters[RusRoMuonIronGamma]=RusRo_vals[@]
parameters[RusRoNeutronEnergyLimit]=RusRo_energy[@]
parameters[RusRoHcalNeutron]=RusRo_vals[@]
parameters[RusRoEcalNeutron]=RusRo_vals[@]
parameters[RusRoMuonIronNeutron]=RusRo_vals[@]
