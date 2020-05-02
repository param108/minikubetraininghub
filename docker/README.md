# Docker for running kubectl

This docker container has kubectl preinstalled and also creates 10 users.

1. user1
2. user2
3. user3
...
9. user9

both username and password are the same.

It also runs inetd as the primary process which will handle telnet users and creation of shells etc.

# Prerequisites
1. running minikube setup
2. running docker on your system

# Setup

1. Run minikube

`minikube start`

	or

`minikube start --vm-driver=virtualbox

2. edit the file `bash_profile` and replace 192.168.99.100 with the IP address of the VM created by minikube. You can get the IP from `kubectl get nodes -owide`

3. copy the directory `~/.minikube` as `minikube` in this directory.

4. create a kube config with only details of the minikube cluster. Then copy the whole directory `~/.kube` as `kube` directory in this directory
- set the ip address for the minikube cluster in ~/.kube/config to the ip address of the VM. It will be 127.0.0.1 in the original.

5. `docker build . -t minikubetester:latest`

# Run

1. To run, do `docker run -d -p 8023:23 minikubetester`

2. `telnet localhost 8023` to  login into the container.
