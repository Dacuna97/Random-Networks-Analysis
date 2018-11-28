#!/bin/bash

mkdir Metrics 
for i in $(seq 1 10); do
#500 nodes
    #subcritical
    python3 metrics_networkx.py random ./Random500/random_nodes_500_0.001_$i.csv ./Random500/random_edges_500_0.001_$i.csv 0.001
    #critical
    python3 metrics_networkx.py random ./Random500/random_nodes_500_0.002_$i.csv ./Random500/random_edges_500_0.002_$i.csv 0.002
    #supercritical
    python3 metrics_networkx.py random ./Random500/random_nodes_500_0.009_$i.csv ./Random500/random_edges_500_0.009_$i.csv 0.009
    #connected
    python3 metrics_networkx.py random ./Random500/random_nodes_500_0.1_$i.csv ./Random500/random_edges_500_0.1_$i.csv 0.1
#1000 nodes
    #subcritical
    python3 metrics_networkx.py random ./Random1000/random_nodes_1000_0.0009_$i.csv ./Random1000/random_edges_1000_0.0009_$i.csv 0.0009
    #critical
    python3 metrics_networkx.py random ./Random1000/random_nodes_1000_0.001_$i.csv ./Random1000/random_edges_1000_0.001_$i.csv 0.001
    #supercritical
    python3 metrics_networkx.py random ./Random1000/random_nodes_1000_0.005_$i.csv ./Random1000/random_edges_1000_0.005_$i.csv 0.005
    #connected
    python3 metrics_networkx.py random ./Random1000/random_nodes_1000_0.009_$i.csv ./Random1000/random_edges_1000_0.009_$i.csv 0.009
#5000 nodes
    #subcritical
    python3 metrics_networkx.py random ./Random5000/random_nodes_5000_0.0001_$i.csv ./Random5000/random_edges_5000_0.0001_$i.csv 0.0001
    #critical
    python3 metrics_networkx.py random ./Random5000/random_nodes_5000_0.0002_$i.csv ./Random5000/random_edges_5000_0.0002_$i.csv 0.0002
    #supercritical
    python3 metrics_networkx.py random ./Random5000/random_nodes_5000_0.0009_$i.csv ./Random5000/random_edges_5000_0.0009_$i.csv 0.0009
    #connected
    python3 metrics_networkx.py random ./Random5000/random_nodes_5000_0.002_$i.csv ./Random5000/random_edges_5000_0.002_$i.csv 0.002
done



