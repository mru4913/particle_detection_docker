FROM continuumio/anaconda3

LABEL maintainer="TRIUMF capstone" \
      description="Capstone runtime environement - base"
      
# Install pytorch
RUN pip install http://download.pytorch.org/whl/cpu/torch-${PYTORCH_VERSION}-cp27-cp27mu-linux_x86_64.whl
RUN pip install torchvision

# Install tensorflow 
RUN conda install -c conda-forge tensorflow 
