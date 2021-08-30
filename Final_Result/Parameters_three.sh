#!/bin/bash

declare -A parameters

# declare the list of values
RusRo_vals=(0.1 0.01 0.001 0.0001 0.00001)
RusRo_energy=(5.0 10.0 40.0 60.0 100.0 120.0)

# assigning array elements a specific value list
#parameters[RusRoEcalGamma]=RusRo_vals[@]
args=("$@")

#for varnames in $@; do
if [ "${args[0]}" = "RusRoGammaEnergyLimit" ] && [ "${args[1]}" = "RusRoEcalGamma" ]; then
        parameters[RusRoGammaEnergyLimit]=RusRo_energy[@]
        parameters[RusRoEcalGamma]=RusRo_vals[@]
elif [ "${args[0]}" = "RusRoGammaEnergyLimit" ] && [ "${args[1]}" = "RusRoHcalGamma" ]; then
        parameters[RusRoGammaEnergyLimit]=RusRo_energy[@]
        parameters[RusRoHcalGamma]=RusRo_vals[@]
elif [ "${args[0]}" = "RusRoGammaEnergyLimit" ] && [ "${args[1]}" = "RusRoMuonIronGamma" ]; then
        parameters[RusRoGammaEnergyLimit]=RusRo_energy[@]
        parameters[RusRoMuonIronGamma]=RusRo_vals[@]
elif [ "${args[0]}" = "RusRoNeutronEnergyLimit" ] && [ "${args[1]}" = "RusRoEcalNeutron" ]; then
        parameters[RusRoNeutronEnergyLimit]=RusRo_energy[@]
        parameters[RusRoEcalNeutron]=RusRo_vals[@]
elif [ "${args[0]}" = "RusRoNeutronEnergyLimit" ] && [ "${args[1]}" = "RusRoHcalNeutron" ]; then
        parameters[RusRoNeutronEnergyLimit]=RusRo_energy[@]
        parameters[RusRoHcalNeutron]=RusRo_vals[@]
elif [ "${args[0]}" = "RusRoNeutronEnergyLimit" ] && [ "${args[1]}" = "RusRoMuonIronNeutron" ]; then
        parameters[RusRoNeutronEnergyLimit]=RusRo_energy[@]
        parameters[RusRoMuonIronNeutron]=RusRo_vals[@]
fi
