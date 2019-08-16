FROM pytorch/pytorch

LABEL maintainer="TRIUMF capstone" \
      description="Capstone runtime environement - base"
      
# ===============tools=============== # 
# Run a system update 
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
    vim \
    nano

# ===============Packages=============== # 
RUN pip install matplotlib \
    torchvision \
    keras \
    h5py-cache==1.0 \
    torchnet==0.0.4 \ 
    snakemake \
    pytest \
    jupyter 

RUN conda install seaborn && \
    conda clean -ya && \
    conda install -c conda-forge tensorflow && \
    conda install -y h5py=2.8.0 && \
    conda clean -ya && \
    conda install -c anaconda cudnn && \
    conda clean -ya && \ 
    conda install -y scikit-learn && \
    conda clean -ya && \ 
    conda install -y -c conda-forge lightgbm && \
    conda clean -ya

# Install pytorch torchvision
# RUN pip install torchvision

# Install tensorflow and keras
# RUN conda install -c conda-forge tensorflow
# RUN pip install keras

# Install HDF5 Python bindings
# RUN conda install -y h5py=2.8.0 \
#  && conda clean -ya
# RUN pip install h5py-cache==1.0

# Install CUDAnn
# RUN conda install -c anaconda cudnn  \
#  && conda clean -ya
 
# Install Torchnet, a high-level framework for PyTorch
# RUN pip install torchnet==0.0.4

# Install pandas 
# RUN conda install -y pandas\
#  && conda clean -ya
 
# Install sklearn
# RUN conda install -y scikit-learn\
#  && conda clean -ya
 
# Install XGBoost
# RUN conda install -y -c conda-forge xgboost \
#   && conda clean -ya

# Install catboost 
# RUN pip install catboost
  
# Install lightbgm
# RUN conda install -y -c conda-forge lightgbm \
#   && conda clean -ya
  
# Install snakemake 
# RUN pip install snakemake

# Install pytest
# RUN pip install -U pytest
 
# Install jupyter notebook 
# RUN pip install jupyter

# Set the container working directory to the user home folder
WORKDIR /home/jupyter

# Start the jupyter notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=*"]



