# Note that this README is for reference purposes during the meetup, and should not be run on you machine

# Preparation

All commands must be run as `root`

```
sudo su
```

# Install components

```
kubelet 
kubeadm
kubectl
kubernetes-cni
```

# Installing kubernetes

```
/images/install-kubernetes.sh
docker load -i /images/meetup-session3-spark-master.img
docker load -i /images/meetup-session3-spark-slave.img
docker load -i /images/meetup-session3-zeppelin.img
```

# Some vm specific stuff

```
eval `route -n | awk '{ if ($8 =="enp3s0" && $2 != "0.0.0.0") print "route del default gw " $2; }'`
route add default gw 192.168.192.1
```

# Setting up the master

```
kubeadm init --token 90f324.dfa440add2b1bd93 --pod-network-cidr 10.244.0.0/16
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f /images/canal.yaml
kubectl create -f /images/kubernetes-dashboard.yaml
kubectl create -f /images/spark-master.yaml
kubectl create -f /images/spark-slave.yaml
kubectl create -f /images/zeppelin.yaml
```

# Tainting the Master (develpoment only)

```
kubectl taint nodes --all node-role.kubernetes.io/master-
```

# Find the Dashboard application from the command line

```
kubectl get svc -n kube-system kubernetes-dashboard -o wide # this will be used to get the port
kubectl get po -n kube-system -o wide | grep dashboard # this will be used for the ip
nslookup <name_of_pod_node>
```

# Watching things happen from command line

```
watch kubectl get po --all-namespaces -o wide
watch kubectl get svc --all-namespaces -o wide
```

# Joining worker nodes

```
kubeadm join --token 90f324.dfa440add2b1bd93 ipaddressofmaster:6443
```