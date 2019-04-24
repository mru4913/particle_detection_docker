# particle_detection_docker
Build a docker file for the MDS capstone project of particle classification of TRIUMF (Canada's national particle accelerator centre) 

## How to run a shell on `cedar.computecanada.ca`?
`singularity shell -B /home -B /scratch docker://mru4913/particle_detetection_docker:latest`

## How to start an interactive session on GPU node?
`salloc -c 4 --mem 16000M --account=def-kopio --gres=gpu:1`
