#!/bin/bash
ACTION=$1
if [[ -z $ACTION ]]; then
	ACTION="start"
fi

start() {
	echo "Starting synergyc"
	/usr/bin/synergyc -n jerry-tp 192.168.27.3
}

stop() {
	echo "Killing synergyc"
	killall synergyc
}

case "$ACTION" in
	start)
		start
		;;
	stop)
		stop
		;;
	*)
	;;
esac
