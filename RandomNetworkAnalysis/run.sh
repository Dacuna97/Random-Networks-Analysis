#!/bin/bash


echo "Generating the .csv files for networks with 500 nodes"
mkdir ./Random500
#500 nodes
#-----------------------

for i in $(seq 1 10); do
    cd Random500
    #subcritical
    python3 ../random_graph.py 500 0.001 $i
    #critical
    python3 ../random_graph.py 500 0.002 $i
    #supercritical
    python3 ../random_graph.py 500 0.009 $i
    #connected 
    python3 ../random_graph.py 500 0.1 $i
done

echo "Generating the .csv files for networks with 1000 nodes"
mkdir ./Random1000

#1000 nodes
#-----------------------
for i in $(seq 1 10); do
    cd Random1000
    #subcritical
    python3 ../random_graph.py 1000 0.0009 $i
    #critical
    python3 ../random_graph.py 1000 0.001 $i
    #supercritical
    python3 ../random_graph.py 1000 0.005 $i
    #connected
    python3 ../random_graph.py 1000 0.009 $i
done

echo "Generating the .csv files for networks with 5000 nodes"
mkdir ./Random5000

#5000 nodes
#-----------------------
for i in $(seq 1 10); do
    cd Random5000
    #subcritical
    python3 ../random_graph.py 5000 0.0001 $i
    #critical
    python3 ../random_graph.py 5000 0.0002 $i
    #supercritical
    python3 ../random_graph.py 5000 0.0009 $i
    #connected
    python3 ../random_graph.py 5000 0.002 $i
done



