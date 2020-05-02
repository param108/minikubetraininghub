# minikube trainer

Setup minikube on your laptop and allow others to ssh via tmate to a terminal but do not allow them access to anything else on your laptop.

# Overview
1. setup minikube on your laptop
2. create a chroot jail to run tmate inside
3. run a docker container which will allow to use kubectl to access the minikube on your laptop
4. external users can tmate into chroot jail and telnet to docker container

# Directory Structure
*docker*: Instructions and helper files for creating the docker container.

*chroot*: Instructions and scripts for creating the chroot jail.
