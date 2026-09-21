```text 
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ kubectl apply -f broken-pod.yaml
pod/crash-demo created
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ kubectl get pod crash-demo
NAME         READY   STATUS   RESTARTS     AGE
crash-demo   0/1     Error    1 (7s ago)   8s
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ kubectl describe pod crash-demo
Name:             crash-demo
Namespace:        default
Priority:         0
Service Account:  default
Node:             minikube/192.168.49.2
Start Time:       Mon, 21 Sep 2026 12:33:03 +0530
Labels:           <none>
Annotations:      <none>
Status:           Running
IP:               10.244.0.73
IPs:
  IP:  10.244.0.73
Containers:
  app:
    Container ID:  containerd://ebb0a8441a1cc3afad3f9fa5aed8c3d769fc00c5df1b496f27fd0b401cff3941
    Image:         busybox:1.36
    Image ID:      docker.io/library/busybox@sha256:73aaf090f3d85aa34ee199857f03fa3a95c8ede2ffd4cc2cdb5b94e566b11662
    Port:          <none>
    Host Port:     <none>
    Command:
      sh
      -c
      echo "Application starting..."
      echo "Something went wrong!"
      exit 1
      
    State:          Terminated
      Reason:       Error
      Exit Code:    1
      Started:      Mon, 21 Sep 2026 12:33:18 +0530
      Finished:     Mon, 21 Sep 2026 12:33:18 +0530
    Last State:     Terminated
      Reason:       Error
      Exit Code:    1
      Started:      Mon, 21 Sep 2026 12:33:04 +0530
      Finished:     Mon, 21 Sep 2026 12:33:04 +0530
    Ready:          False
    Restart Count:  2
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-hpj7p (ro)
Conditions:
  Type                        Status
  PodReadyToStartContainers   True 
  Initialized                 True 
  Ready                       False 
  ContainersReady             False 
  PodScheduled                True 
Volumes:
  kube-api-access-hpj7p:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    Optional:                false
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type     Reason     Age                From               Message
  ----     ------     ----               ----               -------
  Normal   Scheduled  24s                default-scheduler  Successfully assigned default/crash-demo to minikube
  Normal   Pulled     10s (x3 over 24s)  kubelet            spec.containers{app}: Container image "busybox:1.36" already present on machine and can be accessed by the pod
  Normal   Created    10s (x3 over 24s)  kubelet            spec.containers{app}: Container created
  Normal   Started    10s (x3 over 24s)  kubelet            spec.containers{app}: Container started
  Warning  BackOff    9s (x2 over 23s)   kubelet            spec.containers{app}: Back-off restarting failed container app in pod crash-demo_default(8c84f6d6-c707-4ea3-aae9-588fb9041778)
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ kubectl logs crash-demo
Application starting...
Something went wrong!
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ kubectl logs crash-demo --previous
Application starting...
Something went wrong!
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ kubectl delete pod crash-demo
pod "crash-demo" deleted from default namespace
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ kubectl apply -f fixed-pod.yaml
pod/crash-demo created
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ kubectl get pod crash-demo
NAME         READY   STATUS    RESTARTS   AGE
crash-demo   1/1     Running   0          7s
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ kubectl logs crash-demo
Application starting...
Application is healthy
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/crashloopbackoff$ 
```