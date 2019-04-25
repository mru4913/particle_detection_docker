FROM pytorch/pytorch

LABEL maintainer="TRIUMF capstone" \
      description="Capstone runtime environement - base"
      
# ===============tools=============== # 
# Run a system update to get it up to speed
# Then install less
RUN apt-get update && apt-get install less

      
# ===============Packages=============== # 
# Install graph tool 
RUN pip install -U matplotlib
RUN conda install seaborn \
 && conda clean -ya

# Install pytorch torchvision
RUN pip install torchvision

# Install tensorflow and keras
RUN pip install -c conda-forge tensorflow 
RUN pip install -y keras

# Install HDF5 Python bindings
RUN conda install -y h5py=2.8.0 \
 && conda clean -ya
RUN pip install h5py-cache==1.0

# Install CUDAnn
RUN conda install -c anaconda cudnn  \
 && conda clean -ya
 
# Install Torchnet, a high-level framework for PyTorch
RUN pip install torchnet==0.0.4

# Install pandas 
RUN conda install -y pandas\
 && conda clean -ya
 
# Install jupyter notebook 
RUN pip install -y jupyter

# Set the container working directory to the user home folder
WORKDIR /home/jupyter

# Start the jupyter notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=*"]



