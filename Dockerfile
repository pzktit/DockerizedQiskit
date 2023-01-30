ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER

USER root


USER $NB_UID

# RUN conda create -n qiskit python=3 
# 
# RUN conda init bash && conda activate qiskit

RUN pip install qiskit[visualization]
