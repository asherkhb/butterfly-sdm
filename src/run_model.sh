#!/bin/bash

if [ -z "$1" ]; then
	echo "Please specify a taxon ID.";
elif ["$1" == "help" ]; then
	echo "Please specify a taxon ID.";
else
	echo "Executing model for" $1;
	mkdir -p data/results;
	Rscript --vanilla ./src/ebutterfly-sdm/scripts/get-observation-data.R ${1};
	Rscript --vanilla ./src/ebutterfly-sdm/scripts/run-sdm.R data/inaturalist/${1}-iNaturalist.txt ${1} data/results;
	echo "Complete!";
fi
