FROM continuumio/anaconda3

LABEL maintainer="TRIUMF capstone" \
      description="Capstone runtime environement - base"
      
# Install pytorch
RUN conda install pytorch=0.4.1 cuda90 -c pytorch
RUN pip install torchvision

# Install tensorflow 
RUN conda install -c conda-forge tensorflow 
