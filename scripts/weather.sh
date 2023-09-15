#!/bin/bash
# weather.sh

program=weather
version=1.1

case $1 in
-h | --help)
	echo "$program -v $version"
	echo
	echo "Usage: weather [options]"
	echo "Option          Long Option             Description"
	echo "-h              --help                  Show the help screen"
	echo "-l [location]   --location [location]   Specifies the location"
	;;
-l | --location)
	curl https://wttr.in/$2;;
*)
	curl https://wttr.in;;
esac
