#!/bin/bash

set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** FUNCTIONAL TEST(S) *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW It can run a Java program: $ANSI_RESET"
docker network create somenetwork
docker run -d --name kibana --net somenetwork -p 5601:5601 kibana:7.9.2
docker stop kibana
docker network rm somenetwork


echo -e "\n $ANSI_GREEN *** FUNCTIONAL TEST(S) COMPLETED SUCESSFULLY *** $ANSI_RESET \n"
