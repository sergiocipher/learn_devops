```text 
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/pending-pods$ kubectl apply -f broken-pod.yaml
pod/pending-demo created
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/pending-pods$ kubectl get pod pending-demo
NAME           READY   STATUS    RESTARTS   AGE
pending-demo   0/1     Pending   0          6s
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/pending-pods$ kubectl describe pod pending-demo
Name:             pending-demo
Namespace:        default
Priority:         0
Service Account:  default
Node:             <none>
Labels:           <none>
Annotations:      <none>
Status:           Pending
IP:               
IPs:              <none>
Containers:
  nginx:
    Image:        nginx:1.27
    Port:         <none>
    Host Port:    <none>
    Environment:  <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-qlnl2 (ro)
Conditions:
  Type           Status
  PodScheduled   False 
Volumes:
  kube-api-access-qlnl2:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    Optional:                false
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              kubernetes.io/hostname=node-that-does-not-exist
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type     Reason            Age   From               Message
  ----     ------            ----  ----               -------
  Warning  FailedScheduling  43s   default-scheduler  0/1 nodes are available: 1 node(s) didn't match Pod's node affinity/selector. preemption: 0/1 nodes are available: 1 Preemption is not helpful for scheduling.
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/pending-pods$ kubectl get nodes
NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   13d   v1.37.0
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/pending-pods$ kubectl delete pod pending-demo
pod "pending-demo" deleted from default namespace
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/pending-pods$ kubectl apply -f fixed-pod.yaml
pod/pending-demo created
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/pending-pods$ kubectl get pod pending-demo
NAME           READY   STATUS    RESTARTS   AGE
pending-demo   1/1     Running   0          8s
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/pending-pods$ 
```