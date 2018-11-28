#!/usr/local/bin/python3
import sys
import random
# argv[1] number of nodes, argv[2] probability, argv[3] number of file
default_nodes_name = "random_nodes"
default_edges_name = "random_edges"
print(sys.argv)
if len(sys.argv) < 4:
     print("ERROR")
     exit(1)

file = open(default_nodes_name + "_" + str(sys.argv[1]) + "_" + str(sys.argv[2]) + "_" + str(sys.argv[3]) + ".csv", "w")
file.write("ID")
nodes = int(sys.argv[1])
for x in range(0, nodes):
    file.write("\n")
    file.write(str(x+1))
file.close()

file = open(default_edges_name + "_" + str(sys.argv[1]) + "_" + str(sys.argv[2]) + "_" + str(sys.argv[3]) + ".csv", "w")
file.write("Source;Target;Type;Weight\n")
p = float(sys.argv[2])
for i in range(1, nodes+1):
    for j in range(i+1, nodes+1):
       rand_p = random.random()
       if(rand_p <= p):
            file.write("%d;%d;Undirected;1\n" % (i, j))
file.close()
