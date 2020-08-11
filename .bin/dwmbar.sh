#!/usr/bin/env zsh

function volume {
	echo "`mixer vol | python3.7 -c 'print(input().split(":")[-1])'`%"
}

function battery {
	echo "`sysctl -n hw.acpi.battery.life`%"
}

function disp {
	echo " .: VOL: `volume` | BAT: `battery` | `date +%H:%M:%S` :."
}

if [[ $# -eq 0 ]]
then
	disp
elif [[ $1 = 'loop' ]] 
then
	while :
	do
		xsetroot -name "`$0`"
		sleep 1
	done
fi
