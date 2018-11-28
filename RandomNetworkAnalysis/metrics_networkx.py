#!/usr/local/bin/python3
#Author: Diego Acuña

# argv[1] file nodes name which you are going to calculate the metrics on
# argv[2] file edges name which you are going to calculate the metrics on
import networkx as nx
import sys
import numpy as np
import os

G = nx.Graph()

# reading the nodes file and adding it to the graph G
with open(str(sys.argv[2]), "r") as f:
    lines = f.readlines()
lines = [x.strip() for x in lines]
del lines[0]  # take of line of title
G.add_nodes_from(lines)

# reading the edges file and adding it to the graph G
with open(str(sys.argv[3]), "r") as f:
    lines = f.readlines()
del lines[0]  # take of line of title
lines = [x.strip() for x in lines]

for x in lines:
    x = x.split(';')
    G.add_edge(x[0], x[1])

n = G.number_of_nodes()
l = G.number_of_edges()
degrees = [G.degree(node) for node in G]

file_name = sys.argv[2]
index = len(sys.argv[2]) - 5
print(file_name[index])

existe = os.path.exists("./Metrics/metrics_" + sys.argv[1] + ".csv")

f = open("./Metrics/metrics_" + sys.argv[1] + ".csv", "+a")
if sys.argv[1] == "random":
    if not existe:
        f.write("N;P;Links;Average degree;Density;Largest Hub Degre;Avg distance;Avg clustering coefficient;Number of connected componentes\n")
else:
    if not existe:
        f.write("m;N;Links;Density;Largest Hub Degre;Avg distance;Avg clustering coefficient\n")

print(sys.argv[2])
print("m")
if sys.argv[1] == "scale_free":
    f.write(sys.argv[4] + ';')

print("N")
f.write(str(n) + ';')

if sys.argv[1] == "random":
    f.write(sys.argv[4] + ';') 

print("Links")
f.write(str(l) + ';')

if sys.argv[1] == "random":
    f.write(str(np.mean(degrees)) + ';')

print("Density")
d = l*2.0/float(n*(n-1))
f.write(str(d) + ';')

print("Largest Hub Degree")
kmax = max(degrees)
f.write(str(kmax) + ';')

print("avg distance")
if(nx.is_connected(G)):
    print("connected")
    f.write(str(nx.average_shortest_path_length(G)) + ';')
else:
    f.write("INFINITY;")

print("clustering")
f.write(str(nx.average_clustering(G)) + ';')

if sys.argv[1] == "random":
    f.write(str(nx.number_connected_components(G)))

f.write('\n')
