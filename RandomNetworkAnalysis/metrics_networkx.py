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

exists = os.path.exists("./Metrics/metrics_" + sys.argv[1] + ".csv")

f = open("./Metrics/metrics_" + sys.argv[1] + ".csv", "+a")
if not exists:
        f.write("N;P;Links;Average degree;Density;Largest Hub Degre;Avg distance;Avg clustering coefficient;Number of connected componentes\n")
print(sys.argv[2])
print("m")


print("N")
f.write(str(n) + ';')

f.write(sys.argv[4] + ';') 

f.write(str(l) + ';')

f.write(str(np.mean(degrees)) + ';')

d = l*2.0/float(n*(n-1))
f.write(str(d) + ';')

kmax = max(degrees)
f.write(str(kmax) + ';')

if(nx.is_connected(G)):
    f.write(str(nx.average_shortest_path_length(G)) + ';')
else:
    f.write("INFINITY;")

f.write(str(nx.average_clustering(G)) + ';')

f.write(str(nx.number_connected_components(G)))

f.write('\n')
