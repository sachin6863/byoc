FROM 763104351884.dkr.ecr.us-east-1.amazonaws.com/huggingface-pytorch-training:1.10.2-transformers4.17.0-gpu-py38-cu113-ubuntu20.04

#RUN mkdir -p /opt/program
#RUN mkdir -p /opt/ml

COPY train.py /opt/ml/code/train.py
#COPY train.py /opt/program
#WORKDIR /opt/program

ENV SAGEMAKER_PROGRAM train.py
