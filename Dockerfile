FROM pytorch/pytorch

LABEL maintainer="TRIUMF NA62 Group" \
      description="NA62 rare particle identification runtime environement - base"
      
# ===============tools=============== # 
# Run a system update 
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
    vim

# ===============Packages=============== # 
RUN conda update conda -y 
RUN conda install -y h5py && \
    conda install -c anaconda cudnn && \
    conda install -y scikit-learn && \
    conda install -y -c conda-forge lightgbm && \
    conda install -c anaconda seaborn && \
    conda clean -ya 
    
RUN pip install torchvision \
    matplotlib \
    torchnet \ 
    snakemake \
    pytest \
    lmfit \
    jupyter
   
RUN pip install --upgrade notebook

# Set the container working directory to the user home folder
WORKDIR /home/jupyter

# Start the jupyter notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=*"]
