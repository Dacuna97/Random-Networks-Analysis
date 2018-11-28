#!/bin/bash


echo "Generando los csv de redes con 500 nodos"
mkdir ./Random500
mkdir ./ScaleFree500
#500 nodes
#-----------------------

for i in $(seq 1 10); do
    cd Random500
    #subcritica
    python3 ../random_graph.py 500 0.001 $i
    #critica
    python3 ../random_graph.py 500 0.002 $i
    #supercritica
    python3 ../random_graph.py 500 0.009 $i
    #conectada
    python3 ../random_graph.py 500 0.1 $i

    cd ../ScaleFree500
    python3 ../scale_free_graph.py 500 3 $i
    python3 ../scale_free_graph.py 500 4 $i
    cd ..

done

echo "Generando los csv de redes aleatorios con 1000 nodos"
mkdir ./Random1000
mkdir ./ScaleFree1000

#1000 nodes
#-----------------------
for i in $(seq 1 10); do
    cd Random1000
    #subcritica
    python3 ../random_graph.py 1000 0.0009 $i
    #critica
    python3 ../random_graph.py 1000 0.001 $i
    #supercritica
    python3 ../random_graph.py 1000 0.005 $i
    #conectada
    python3 ../random_graph.py 1000 0.009 $i


    cd ../ScaleFree1000
    python3 ../scale_free_graph.py 1000 3 $i
    python3 ../scale_free_graph.py 1000 4 $i
    cd ..
done

echo "Generando los csv de redes con 5000 nodos"
mkdir ./Random5000
mkdir ./ScaleFree5000

#5000 nodes
#-----------------------
for i in $(seq 1 10); do
    cd Random5000
    #subcritica
    python3 ../random_graph.py 5000 0.0001 $i
    #critica
    python3 ../random_graph.py 5000 0.0002 $i
    #supercritica
    python3 ../random_graph.py 5000 0.0009 $i
    #conectada
    python3 ../random_graph.py 5000 0.002 $i

    cd ../ScaleFree5000
    python3 ../scale_free_graph.py 5000 3 $i
    python3 ../scale_free_graph.py 5000 4 $i
    cd ..
done



