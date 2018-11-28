#!/bin/bash

mkdir Metrics 
for i in $(seq 1 10); do
#500 nodes
    #subcritica
    python3 metrics_networkx.py random ./Random500/random_nodes_500_0.001_$i.csv ./Random500/random_edges_500_0.001_$i.csv 0.001
    #critica
    python3 metrics_networkx.py random ./Random500/random_nodes_500_0.002_$i.csv ./Random500/random_edges_500_0.002_$i.csv 0.002
    #supercritica
    python3 metrics_networkx.py random ./Random500/random_nodes_500_0.009_$i.csv ./Random500/random_edges_500_0.009_$i.csv 0.009
    #conectada
    python3 metrics_networkx.py random ./Random500/random_nodes_500_0.1_$i.csv ./Random500/random_edges_500_0.1_$i.csv 0.1
#1000 nodes
    #subcritica
    python3 metrics_networkx.py random ./Random1000/random_nodes_1000_0.0009_$i.csv ./Random1000/random_edges_1000_0.0009_$i.csv 0.0009
    #critica
    python3 metrics_networkx.py random ./Random1000/random_nodes_1000_0.001_$i.csv ./Random1000/random_edges_1000_0.001_$i.csv 0.001
    #supercritica
    python3 metrics_networkx.py random ./Random1000/random_nodes_1000_0.005_$i.csv ./Random1000/random_edges_1000_0.005_$i.csv 0.005
    #conectada
    python3 metrics_networkx.py random ./Random1000/random_nodes_1000_0.009_$i.csv ./Random1000/random_edges_1000_0.009_$i.csv 0.009
#5000 nodes
    #subcritica
    python3 metrics_networkx.py random ./Random5000/random_nodes_5000_0.0001_$i.csv ./Random5000/random_edges_5000_0.0001_$i.csv 0.0001
    #critica
    python3 metrics_networkx.py random ./Random5000/random_nodes_5000_0.0002_$i.csv ./Random5000/random_edges_5000_0.0002_$i.csv 0.0002
    #supercritica
    python3 metrics_networkx.py random ./Random5000/random_nodes_5000_0.0009_$i.csv ./Random5000/random_edges_5000_0.0009_$i.csv 0.0009
    #conectada
    python3 metrics_networkx.py random ./Random5000/random_nodes_5000_0.002_$i.csv ./Random5000/random_edges_5000_0.002_$i.csv 0.002


    ### Scale Free ###
    #500 nodes
    python3 metrics_networkx.py scale_free ./ScaleFree500/scale_free_nodes_500_3_$i.csv ./ScaleFree500/scale_free_edges_500_3_$i.csv 3
    python3 metrics_networkx.py scale_free ./ScaleFree500/scale_free_nodes_500_4_$i.csv ./ScaleFree500/scale_free_edges_500_4_$i.csv 4

    #1000 nodes
    python3 metrics_networkx.py scale_free ./ScaleFree1000/scale_free_nodes_1000_3_$i.csv ./ScaleFree1000/scale_free_edges_1000_3_$i.csv 3
    python3 metrics_networkx.py scale_free ./ScaleFree1000/scale_free_nodes_1000_4_$i.csv ./ScaleFree1000/scale_free_edges_1000_4_$i.csv 4

    #5000 nodes
    python3 metrics_networkx.py scale_free ./ScaleFree5000/scale_free_nodes_5000_3_$i.csv ./ScaleFree5000/scale_free_edges_5000_3_$i.csv 3
    python3 metrics_networkx.py scale_free ./ScaleFree5000/scale_free_nodes_5000_4_$i.csv ./ScaleFree5000/scale_free_edges_5000_4_$i.csv 4
done



