module purge

module load modules modules-init modules-gs/prod modules-eichler/prod

module load miniconda/4.5.12


snakemake -s meryl.snake --drmaa " -V -cwd -w n -e ./log -o ./log {params.sge_opts} -S /bin/bash" -j 100 -k 
