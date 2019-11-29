FROM pytorch/pytorch

LABEL maintainer="TRIUMF capstone" \
      description="Capstone runtime environement - base"
      
# ===============tools=============== # 
# Run a system update 
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
    vim \
    nano

# ===============Packages=============== # 
RUN conda update conda -y 
RUN conda install seaborn && \
    conda clean -ya && \
    conda install -c conda-forge tensorflow && \
    conda install -y h5py && \
    conda clean -ya && \
    conda install -c anaconda cudnn && \
    conda clean -ya && \ 
    conda install -y scikit-learn && \
    conda clean -ya && \ 
    conda install -y -c conda-forge lightgbm && \
    conda clean -ya && \
    conda update --all -y
    
RUN pip install torchvision \
    tables \
    keras \
    h5py-cache \
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



