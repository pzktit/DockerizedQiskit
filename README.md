# Qiskit
Build Docker image with Qiskit

## Build

You need Docker for this to work. Just clone this repository and do

```
cd Qiskit
docker build -t myqiskit .
```
Please edit image tag ('myqiskit') according to your needs. 
The above will build a Docker image with Jupyter Notebook runtime environment and installs Qiskit in it.

## Run

Go to folder with Qiskit notebooks and issue

```
docker run --rm --name "qiskit" -ti -v ${PWD}:/home/jovyan/work -p 8888:8888 myqiskit
```

Please open the displayed link in a browser. The notebook documents will be visible in subfolder 'work'.

The prebuild image is available on docker hub, so you can use it with

```
docker run --rm --name "qiskit" -ti -v ${PWD}:/home/jovyan/work -p 8888:8888 pzawad/qiskit
```

