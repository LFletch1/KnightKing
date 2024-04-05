#!/bin/sh

#SBATCH -N64
#SBATCH -t 01:00:00
#SBATCH --ntasks-per-node=1
#SBATCH -p pbatch
#SBATCH -o N64_WDC_100M_80l.txt

# srun bin/deepwalk -g /p/lustre2/havoqgtu/lance/***.txt --make-undirected -s unweighted -v 105896435 -w 105000000 -l 80
srun bin/deepwalk -g /p/lustre2/havoqgtu/lance/2Billion_vertex_graph.txt --make-undirected -s unweighted -v 2229480657 -w 1000000 -l 80
# srun bin/deepwalk -g /p/lustre2/havoqgtu/lance/WDC12_unweighted_rnd_ids.edgelist --make-undirected -s unweighted -v 3563602789 -w 100000000 -l 80
# srun bin/deepwalk -g ./karate.data --make-undirected -s weighted -v 34 -w 50 -l 80
