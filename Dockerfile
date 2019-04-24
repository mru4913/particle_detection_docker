FROM continuumio/anaconda3

LABEL maintainer="TRIUMF capstone" \
      description="Capstone runtime environement - base"
      
# Install pytorch
RUN pip install https://download.pytorch.org/whl/cu80/torch-0.4.1-cp36-cp36m-linux_x86_64.whl
RUN pip install torchvision

# Install tensorflow 
RUN conda install -c conda-forge tensorflow 
