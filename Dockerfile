FROM pytorch/pytorch

LABEL maintainer="TRIUMF capstone" \
      description="Capstone runtime environement - base"
      
# Install pytorch torchvision
RUN pip install torchvision

# Install tensorflow 
# RUN pip install -c conda-forge tensorflow 

# Install HDF5 Python bindings
RUN conda install -y h5py=2.8.0 \
 && conda clean -ya
RUN pip install h5py-cache==1.0

# Install CUDAnn
RUN conda install -c anaconda cudnn  \
 && conda clean -ya
 
# Install Torchnet, a high-level framework for PyTorch
RUN pip install torchnet==0.0.4

# Install num



