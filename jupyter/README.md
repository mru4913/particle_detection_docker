# Run a Jupyter instance on a GPU node

Pedestrian instruction to run a `jupyter` instance on a CEDAR compute node, this will be automated.

## Start a GPU compute node
 
 * Login on `cedar.computecanda.ca`
 * Ask for GPU compute node: `salloc -c 4 --mem 16000M --account=def-kopio --gres=gpu:1`
 * Once you are on the node pull and run the image `singularity shell -B /project -B /scratch -B /localscratch docker://jupyter/scipy-notebook`
 * Start jupyter: `jupyter-notebook`

## Open SSH tunnel to `cedar.computecanada.ca`
`sshuttle --dns -Nr cedar.computecanada.ca`

## Connect to your `jupyter` instance:
`http://<hostname>.cedar.computecanada.ca:8888/?token=14ff00f673e4bf797d53705aa596bee2d9f9dd87658cf365`
(Edit <hostname> accordingly)
