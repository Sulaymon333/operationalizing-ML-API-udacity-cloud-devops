[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/tree/main)

## Project Overview

This is the project 4 of Udacity DevOps Nanodegree programme (2023). It is about operationalizing a Machine Learning Microservice API.

A a pre-trained, `sklearn` model that has been trained was provided to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project implements the Operationalization of a Python flask app, `app.py` that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

This project carried a number of task listed below to operationalize a working machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications.

- Project code was tested using linting
- A Dockerfile was completed to containerize this application
- Deployment of a containerized application using Docker and make a prediction
- Improved the log statements in the source code for the application
- Configured Kubernetes and created a Kubernetes cluster
- Deployed a container using Kubernetes and make a prediction
- Uploaded a complete Github repo with CircleCI status badge to indicate that the code has been tested and it shows passed badge.

## Short description of folders and files in this repository (d - folder and f - file)

- [.circleci (d)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/tree/main/.circleci): this is the folder for the CircleCI build server. It contains the config.yml configuration file
- [model_data (d)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/tree/main/model_data): this is the folder for the pretrained sklearn model and housing csv files
- [output_txt_files (d)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/tree/main/output_txt_files): this is the folder for the sample output logs from running ./run_docker.sh and ./run_kubernetes.sh. It contains 2 files - docker_out.txt and kubernetes_out.txt
- [Dockerfile (f)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/blob/main/Dockerfile): this file contains instructions to containerize the application
- [Makefile (f)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/blob/main/Makefile) : this file contains instructions for environment setup and lint tests
- [app.py (f)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/blob/main/app.py): this file contains the flask app
- [requirements.txt (f)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/blob/main/requirements.txt): this file contains the list of required dependencies
- [upload_docker.sh (f)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/blob/main/upload_docker.sh): this is the bash script to upload the built Docker image to Dockerhub
- [run_docker.sh (f)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/blob/main/run_docker.sh): this is the bash script to build Docker image and run the application in a Docker container
- [run_kubernetes.sh (f)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/blob/main/run_kubernetes.sh): this is the bash script to run the application in a Kubernetes cluster
- [make_prediction.sh (f)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/blob/main/make_prediction.sh): this is the bash script to make predictions against the Docker container and k8s cluster
- [README.md (f)](https://github.com/Sulaymon333/operationalizing-ML-API-udacity-cloud-devops/blob/main/README.md): this is the README.md file to describe the project

---

## Environment setup instructions

- Create a virtualenv in python and activate it
- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl
