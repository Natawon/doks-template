Doks-template
STEP
 #1 Download file yaml

kubectl --kubeconfig="k8s-1-18-6-do-0-sgp1-1596769607231-kubeconfig.yaml" get nodes
-----------

#2
doctl auth init --access-token b6078d9085334c6f8b87fd934f942836570e097baf75344a9bb5e49693258ad4

#3 check cluster
doctl kubernetes cluster list

#4  Adding cluster credentials
doctl kubernetes cluster kubeconfig save k8s-1-18-6-do-0-sgp1-1597388416381

#5 get node
kubectl get node

#6 get pods
kubectl get pods

#7 service/doks-example created
kubectl apply -f manifest.yaml

#8
kubectl get pods

#9 get deployment
kubectl get deployment -o wide

#10 get service
kubectl get service

doks-example   LoadBalancer   10.245.158.63   139.59.193.194   80:32213/TCP   4m42s


Install Kubectl
Option 1
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl

kubectl version --client

Install Doctl
snap install doctl


DigitalOcean API
doctl auth init --access-token 1672bbad8135de44ac138e7ff214ff22935c9a10612dbf49d2e3900fb3ab787b

#Download Config file &  Adding cluster credentials
doctl kubernetes cluster kubeconfig save use_your_cluster_name
doctl kubernetes cluster kubeconfig save 9f47e3a4-9531-4679-a627-68d4688ddac6  #Automated certificate management (Recommended)


cat /root/.kube/config

kubectl --kubeconfig="ex.yaml" get nodes


Access to Multi Cluster
Ref: https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/
doctl kubernetes cluster list


kubectl config get-clusters   ##ดูว่ามีclusterมีอะไรบ้าง
kubectl config get-contexts   ##ดูว่าเลือก cluster ไหนอยู่
doctl kubernetes cluster kubeconfig save 9f47e3a4-9531-4679-a627-68d4688ddac6


