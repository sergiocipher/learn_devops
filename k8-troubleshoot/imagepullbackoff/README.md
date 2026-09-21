```text 
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/imagepullbackoff$ kubectl apply -f broken-pod.yaml
pod/image-demo created
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/imagepullbackoff$ kubectl get pod image-demo
NAME         READY   STATUS         RESTARTS   AGE
image-demo   0/1     ErrImagePull   0          6s
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/imagepullbackoff$ kubectl describe pod image-demo
Name:             image-demo
Namespace:        default
Priority:         0
Service Account:  default
Node:             minikube/192.168.49.2
Start Time:       Mon, 21 Sep 2026 12:38:45 +0530
Labels:           <none>
Annotations:      <none>
Status:           Pending
IP:               10.244.0.75
IPs:
  IP:  10.244.0.75
Containers:
  app:
    Container ID:   
    Image:          nginx:this-image-does-not-exist
    Image ID:       
    Port:           <none>
    Host Port:      <none>
    State:          Waiting
      Reason:       ImagePullBackOff
    Ready:          False
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-7czgn (ro)
Conditions:
  Type                        Status
  PodReadyToStartContainers   True 
  Initialized                 True 
  Ready                       False 
  ContainersReady             False 
  PodScheduled                True 
Volumes:
  kube-api-access-7czgn:
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
  Type     Reason     Age               From               Message
  ----     ------     ----              ----               -------
  Normal   Scheduled  18s               default-scheduler  Successfully assigned default/image-demo to minikube
  Warning  Failed     16s               kubelet            spec.containers{app}: Failed to pull image "nginx:this-image-does-not-exist": rpc error: code = NotFound desc = failed to pull and unpack image "docker.io/library/nginx:this-image-does-not-exist": failed to resolve reference "docker.io/library/nginx:this-image-does-not-exist": docker.io/library/nginx:this-image-does-not-exist: not found
  Warning  Failed     16s               kubelet            spec.containers{app}: Error: ErrImagePull
  Normal   BackOff    16s               kubelet            spec.containers{app}: Back-off pulling image "nginx:this-image-does-not-exist"
  Warning  Failed     16s               kubelet            spec.containers{app}: Error: ImagePullBackOff
  Normal   Pulling    2s (x2 over 18s)  kubelet            spec.containers{app}: Pulling image "nginx:this-image-does-not-exist"
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/imagepullbackoff$ kubectl delete pod image-demo
pod "image-demo" deleted from default namespace
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/imagepullbackoff$ kubectl apply -f fixed-pod.yaml
pod/image-demo created
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/imagepullbackoff$ kubectl get pod image-demo
NAME         READY   STATUS    RESTARTS   AGE
image-demo   1/1     Running   0          7s
```