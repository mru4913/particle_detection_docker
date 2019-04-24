FROM pytorch/pytorch

LABEL maintainer="TRIUMF capstone" \
      description="Capstone runtime environement - base"
      
# Install pytorch
RUN pip3 install https://download.pytorch.org/whl/cu100/torch-1.0.1.post2-cp36-cp36m-linux_x86_64.whl
RUN pip3 install torchvision

# Install tensorflow 
# RUN pip install -c conda-forge tensorflow 
