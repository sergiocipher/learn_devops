```text 
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-exec/events$ kubectl apply -f pod.yaml
pod/events-demo created
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-exec/events$ kubectl get events
LAST SEEN   TYPE     REASON             OBJECT                                      MESSAGE
34m         Normal   Killing            pod/curl-client                             Stopping container client
34m         Normal   Killing            pod/dns-test-client                         Stopping container dns-client
6s          Normal   Scheduled          pod/events-demo                             Successfully assigned default/events-demo to minikube
6s          Normal   Pulled             pod/events-demo                             Container image "nginx:1.27" already present on machine and can be accessed by the pod
6s          Normal   Created            pod/events-demo                             Container created
6s          Normal   Started            pod/events-demo                             Container started
4m21s       Normal   Scheduled          pod/exec-demo                               Successfully assigned default/exec-demo to minikube
4m21s       Normal   Pulled             pod/exec-demo                               Container image "nginx:1.27" already present on machine and can be accessed by the pod
4m21s       Normal   Created            pod/exec-demo                               Container created
4m21s       Normal   Started            pod/exec-demo                               Container started
38m         Normal   Scheduled          pod/get-demo                                Successfully assigned default/get-demo to minikube
38m         Normal   Pulling            pod/get-demo                                Pulling image "nginx:1.27"
37m         Normal   Pulled             pod/get-demo                                Successfully pulled image "nginx:1.27" in 36.009s (36.009s including waiting). Image size: 72406859 bytes.
37m         Normal   Created            pod/get-demo                                Container created
37m         Normal   Started            pod/get-demo                                Container started
34m         Normal   Killing            pod/get-demo                                Stopping container nginx
29m         Normal   Scheduled          pod/get-demo                                Successfully assigned default/get-demo to minikube
29m         Normal   Pulled             pod/get-demo                                Container image "nginx:1.27" already present on machine and can be accessed by the pod
29m         Normal   Created            pod/get-demo                                Container created
29m         Normal   Started            pod/get-demo                                Container started
28m         Normal   Killing            pod/get-demo                                Stopping container nginx
25m         Normal   Scheduled          pod/get-demo                                Successfully assigned default/get-demo to minikube
25m         Normal   Pulled             pod/get-demo                                Container image "nginx:1.27" already present on machine and can be accessed by the pod
25m         Normal   Created            pod/get-demo                                Container created
25m         Normal   Started            pod/get-demo                                Container started
34m         Normal   Killing            pod/headless-dns-client                     Stopping container dns-client
9m26s       Normal   Scheduled          pod/logs-demo                               Successfully assigned default/logs-demo to minikube
9m26s       Normal   Pulling            pod/logs-demo                               Pulling image "busybox:1.36"
9m19s       Normal   Pulled             pod/logs-demo                               Successfully pulled image "busybox:1.36" in 6.936s (6.936s including waiting). Image size: 2217006 bytes.
9m19s       Normal   Created            pod/logs-demo                               Container created
9m19s       Normal   Started            pod/logs-demo                               Container started
27m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-46jxc      Successfully assigned default/web-app-clusterip-66865d4855-46jxc to minikube
27m         Normal   Pulled             pod/web-app-clusterip-66865d4855-46jxc      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-clusterip-66865d4855-46jxc      Container created
27m         Normal   Started            pod/web-app-clusterip-66865d4855-46jxc      Container started
34m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-4gnp5      Successfully assigned default/web-app-clusterip-66865d4855-4gnp5 to minikube
34m         Normal   Pulled             pod/web-app-clusterip-66865d4855-4gnp5      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-clusterip-66865d4855-4gnp5      Container created
34m         Normal   Started            pod/web-app-clusterip-66865d4855-4gnp5      Container started
28m         Normal   Killing            pod/web-app-clusterip-66865d4855-4gnp5      Stopping container nginx-web
27m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-5xnws      Successfully assigned default/web-app-clusterip-66865d4855-5xnws to minikube
27m         Normal   Pulled             pod/web-app-clusterip-66865d4855-5xnws      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-clusterip-66865d4855-5xnws      Container created
27m         Normal   Started            pod/web-app-clusterip-66865d4855-5xnws      Container started
34m         Normal   Killing            pod/web-app-clusterip-66865d4855-682mk      Stopping container nginx-web
28m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-6c88t      Successfully assigned default/web-app-clusterip-66865d4855-6c88t to minikube
28m         Normal   Pulled             pod/web-app-clusterip-66865d4855-6c88t      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-clusterip-66865d4855-6c88t      Container created
28m         Normal   Started            pod/web-app-clusterip-66865d4855-6c88t      Container started
27m         Normal   Killing            pod/web-app-clusterip-66865d4855-6c88t      Stopping container nginx-web
34m         Normal   Killing            pod/web-app-clusterip-66865d4855-8drpc      Stopping container nginx-web
28m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-bgbwt      Successfully assigned default/web-app-clusterip-66865d4855-bgbwt to minikube
28m         Normal   Pulled             pod/web-app-clusterip-66865d4855-bgbwt      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-clusterip-66865d4855-bgbwt      Container created
28m         Normal   Started            pod/web-app-clusterip-66865d4855-bgbwt      Container started
27m         Normal   Killing            pod/web-app-clusterip-66865d4855-bgbwt      Stopping container nginx-web
27m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-hbx2x      Successfully assigned default/web-app-clusterip-66865d4855-hbx2x to minikube
27m         Normal   Pulled             pod/web-app-clusterip-66865d4855-hbx2x      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-clusterip-66865d4855-hbx2x      Container created
27m         Normal   Started            pod/web-app-clusterip-66865d4855-hbx2x      Container started
28m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-hsztb      Successfully assigned default/web-app-clusterip-66865d4855-hsztb to minikube
28m         Normal   Pulled             pod/web-app-clusterip-66865d4855-hsztb      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-clusterip-66865d4855-hsztb      Container created
28m         Normal   Started            pod/web-app-clusterip-66865d4855-hsztb      Container started
27m         Normal   Killing            pod/web-app-clusterip-66865d4855-hsztb      Stopping container nginx-web
34m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-k82qg      Successfully assigned default/web-app-clusterip-66865d4855-k82qg to minikube
34m         Normal   Pulled             pod/web-app-clusterip-66865d4855-k82qg      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-clusterip-66865d4855-k82qg      Container created
34m         Normal   Started            pod/web-app-clusterip-66865d4855-k82qg      Container started
28m         Normal   Killing            pod/web-app-clusterip-66865d4855-k82qg      Stopping container nginx-web
34m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-t86wv      Successfully assigned default/web-app-clusterip-66865d4855-t86wv to minikube
34m         Normal   Pulled             pod/web-app-clusterip-66865d4855-t86wv      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-clusterip-66865d4855-t86wv      Container created
34m         Normal   Started            pod/web-app-clusterip-66865d4855-t86wv      Container started
28m         Normal   Killing            pod/web-app-clusterip-66865d4855-t86wv      Stopping container nginx-web
34m         Normal   Killing            pod/web-app-clusterip-66865d4855-zfn65      Stopping container nginx-web
34m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-t86wv
34m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-4gnp5
34m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-k82qg
28m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-6c88t
28m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-hsztb
28m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-bgbwt
27m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-hbx2x
27m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-5xnws
27m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-46jxc
34m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-29dl4    Successfully assigned default/web-app-loadbalancer-5db87c7b9-29dl4 to minikube
34m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-29dl4    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-29dl4    Container created
34m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-29dl4    Container started
28m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-29dl4    Stopping container web-server
28m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-2hv7c    Successfully assigned default/web-app-loadbalancer-5db87c7b9-2hv7c to minikube
28m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-2hv7c    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-2hv7c    Container created
28m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-2hv7c    Container started
27m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-2hv7c    Stopping container web-server
28m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-77kq4    Successfully assigned default/web-app-loadbalancer-5db87c7b9-77kq4 to minikube
28m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-77kq4    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-77kq4    Container created
28m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-77kq4    Container started
27m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-77kq4    Stopping container web-server
27m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-7hgff    Successfully assigned default/web-app-loadbalancer-5db87c7b9-7hgff to minikube
27m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-7hgff    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-7hgff    Container created
27m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-7hgff    Container started
34m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-9rgrd    Stopping container web-server
34m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-b9nqg    Stopping container web-server
34m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-bklnb    Successfully assigned default/web-app-loadbalancer-5db87c7b9-bklnb to minikube
34m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-bklnb    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-bklnb    Container created
34m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-bklnb    Container started
28m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-bklnb    Stopping container web-server
27m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-ls2dr    Successfully assigned default/web-app-loadbalancer-5db87c7b9-ls2dr to minikube
27m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-ls2dr    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-ls2dr    Container created
27m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-ls2dr    Container started
27m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-m9kj8    Successfully assigned default/web-app-loadbalancer-5db87c7b9-m9kj8 to minikube
27m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-m9kj8    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-m9kj8    Container created
27m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-m9kj8    Container started
34m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-mfwqd    Successfully assigned default/web-app-loadbalancer-5db87c7b9-mfwqd to minikube
34m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-mfwqd    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-mfwqd    Container created
34m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-mfwqd    Container started
28m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-mfwqd    Stopping container web-server
34m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-nrrj4    Stopping container web-server
28m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-qwkrj    Successfully assigned default/web-app-loadbalancer-5db87c7b9-qwkrj to minikube
28m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-qwkrj    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-qwkrj    Container created
28m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-qwkrj    Container started
27m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-qwkrj    Stopping container web-server
34m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-bklnb
34m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-29dl4
34m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-mfwqd
28m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-77kq4
28m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-2hv7c
28m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-qwkrj
27m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-m9kj8
27m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-7hgff
27m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-ls2dr
34m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-2ksrg         Stopping container web-server
34m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-5h66j         Successfully assigned default/web-app-nodeport-6c8f48bd-5h66j to minikube
34m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-5h66j         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-nodeport-6c8f48bd-5h66j         Container created
34m         Normal   Started            pod/web-app-nodeport-6c8f48bd-5h66j         Container started
28m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-5h66j         Stopping container web-server
28m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-8crql         Successfully assigned default/web-app-nodeport-6c8f48bd-8crql to minikube
28m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-8crql         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-nodeport-6c8f48bd-8crql         Container created
28m         Normal   Started            pod/web-app-nodeport-6c8f48bd-8crql         Container started
27m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-8crql         Stopping container web-server
34m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-8dvk5         Successfully assigned default/web-app-nodeport-6c8f48bd-8dvk5 to minikube
34m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-8dvk5         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-nodeport-6c8f48bd-8dvk5         Container created
34m         Normal   Started            pod/web-app-nodeport-6c8f48bd-8dvk5         Container started
28m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-8dvk5         Stopping container web-server
34m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-96qww         Stopping container web-server
28m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-b5m9g         Successfully assigned default/web-app-nodeport-6c8f48bd-b5m9g to minikube
28m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-b5m9g         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-nodeport-6c8f48bd-b5m9g         Container created
28m         Normal   Started            pod/web-app-nodeport-6c8f48bd-b5m9g         Container started
27m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-b5m9g         Stopping container web-server
27m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-pmmqw         Successfully assigned default/web-app-nodeport-6c8f48bd-pmmqw to minikube
27m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-pmmqw         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-nodeport-6c8f48bd-pmmqw         Container created
27m         Normal   Started            pod/web-app-nodeport-6c8f48bd-pmmqw         Container started
27m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-vnw4q         Successfully assigned default/web-app-nodeport-6c8f48bd-vnw4q to minikube
27m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-vnw4q         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-nodeport-6c8f48bd-vnw4q         Container created
27m         Normal   Started            pod/web-app-nodeport-6c8f48bd-vnw4q         Container started
34m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-8dvk5
34m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-5h66j
28m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-b5m9g
28m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-8crql
27m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-vnw4q
27m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-pmmqw
34m         Normal   Killing            pod/web-stateful-0                          Stopping container nginx-stateful
34m         Normal   Scheduled          pod/web-stateful-0                          Successfully assigned default/web-stateful-0 to minikube
34m         Normal   Pulled             pod/web-stateful-0                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-stateful-0                          Container created
34m         Normal   Started            pod/web-stateful-0                          Container started
28m         Normal   Killing            pod/web-stateful-0                          Stopping container nginx-stateful
28m         Normal   Scheduled          pod/web-stateful-0                          Successfully assigned default/web-stateful-0 to minikube
28m         Normal   Pulled             pod/web-stateful-0                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-stateful-0                          Container created
28m         Normal   Started            pod/web-stateful-0                          Container started
27m         Normal   Killing            pod/web-stateful-0                          Stopping container nginx-stateful
27m         Normal   Scheduled          pod/web-stateful-0                          Successfully assigned default/web-stateful-0 to minikube
27m         Normal   Pulled             pod/web-stateful-0                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-stateful-0                          Container created
27m         Normal   Started            pod/web-stateful-0                          Container started
34m         Normal   Killing            pod/web-stateful-1                          Stopping container nginx-stateful
34m         Normal   Scheduled          pod/web-stateful-1                          Successfully assigned default/web-stateful-1 to minikube
34m         Normal   Pulled             pod/web-stateful-1                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-stateful-1                          Container created
34m         Normal   Started            pod/web-stateful-1                          Container started
28m         Normal   Killing            pod/web-stateful-1                          Stopping container nginx-stateful
28m         Normal   Scheduled          pod/web-stateful-1                          Successfully assigned default/web-stateful-1 to minikube
28m         Normal   Pulled             pod/web-stateful-1                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-stateful-1                          Container created
28m         Normal   Started            pod/web-stateful-1                          Container started
27m         Normal   Killing            pod/web-stateful-1                          Stopping container nginx-stateful
27m         Normal   Scheduled          pod/web-stateful-1                          Successfully assigned default/web-stateful-1 to minikube
27m         Normal   Pulled             pod/web-stateful-1                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-stateful-1                          Container created
27m         Normal   Started            pod/web-stateful-1                          Container started
34m         Normal   Killing            pod/web-stateful-2                          Stopping container nginx-stateful
34m         Normal   Scheduled          pod/web-stateful-2                          Successfully assigned default/web-stateful-2 to minikube
34m         Normal   Pulled             pod/web-stateful-2                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-stateful-2                          Container created
34m         Normal   Started            pod/web-stateful-2                          Container started
28m         Normal   Killing            pod/web-stateful-2                          Stopping container nginx-stateful
28m         Normal   Scheduled          pod/web-stateful-2                          Successfully assigned default/web-stateful-2 to minikube
28m         Normal   Pulled             pod/web-stateful-2                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-stateful-2                          Container created
28m         Normal   Started            pod/web-stateful-2                          Container started
27m         Normal   Killing            pod/web-stateful-2                          Stopping container nginx-stateful
27m         Normal   Scheduled          pod/web-stateful-2                          Successfully assigned default/web-stateful-2 to minikube
27m         Normal   Pulled             pod/web-stateful-2                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-stateful-2                          Container created
27m         Normal   Started            pod/web-stateful-2                          Container started
27m         Normal   SuccessfulCreate   statefulset/web-stateful                    Create Pod web-stateful-0 in StatefulSet web-stateful successful
27m         Normal   SuccessfulCreate   statefulset/web-stateful                    Create Pod web-stateful-1 in StatefulSet web-stateful successful
27m         Normal   SuccessfulCreate   statefulset/web-stateful                    Create Pod web-stateful-2 in StatefulSet web-stateful successful
28m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-27dtn          Successfully assigned default/yatri-backend-6c58cb99c7-27dtn to minikube
28m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-27dtn          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/yatri-backend-6c58cb99c7-27dtn          Container created
28m         Normal   Started            pod/yatri-backend-6c58cb99c7-27dtn          Container started
27m         Normal   Killing            pod/yatri-backend-6c58cb99c7-27dtn          Stopping container backend
34m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-48j4s          Successfully assigned default/yatri-backend-6c58cb99c7-48j4s to minikube
34m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-48j4s          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/yatri-backend-6c58cb99c7-48j4s          Container created
34m         Normal   Started            pod/yatri-backend-6c58cb99c7-48j4s          Container started
28m         Normal   Killing            pod/yatri-backend-6c58cb99c7-48j4s          Stopping container backend
27m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-82jqf          Successfully assigned default/yatri-backend-6c58cb99c7-82jqf to minikube
27m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-82jqf          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/yatri-backend-6c58cb99c7-82jqf          Container created
27m         Normal   Started            pod/yatri-backend-6c58cb99c7-82jqf          Container started
27m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-ckdkk          Successfully assigned default/yatri-backend-6c58cb99c7-ckdkk to minikube
27m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-ckdkk          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/yatri-backend-6c58cb99c7-ckdkk          Container created
27m         Normal   Started            pod/yatri-backend-6c58cb99c7-ckdkk          Container started
34m         Normal   Killing            pod/yatri-backend-6c58cb99c7-hvl49          Stopping container backend
34m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-mq29b          Successfully assigned default/yatri-backend-6c58cb99c7-mq29b to minikube
34m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-mq29b          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/yatri-backend-6c58cb99c7-mq29b          Container created
34m         Normal   Started            pod/yatri-backend-6c58cb99c7-mq29b          Container started
28m         Normal   Killing            pod/yatri-backend-6c58cb99c7-mq29b          Stopping container backend
28m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-njzxj          Successfully assigned default/yatri-backend-6c58cb99c7-njzxj to minikube
28m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-njzxj          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/yatri-backend-6c58cb99c7-njzxj          Container created
28m         Normal   Started            pod/yatri-backend-6c58cb99c7-njzxj          Container started
27m         Normal   Killing            pod/yatri-backend-6c58cb99c7-njzxj          Stopping container backend
34m         Normal   Killing            pod/yatri-backend-6c58cb99c7-nvgvj          Stopping container backend
34m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-mq29b
34m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-48j4s
28m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-27dtn
28m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-njzxj
27m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-82jqf
27m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-ckdkk
34m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-4xj8b          Successfully assigned default/yatri-frontend-ddcfc4b5f-4xj8b to minikube
34m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-4xj8b          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-4xj8b          Container created
34m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-4xj8b          Container started
28m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-4xj8b          Stopping container frontend
28m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-9tphr          Successfully assigned default/yatri-frontend-ddcfc4b5f-9tphr to minikube
28m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-9tphr          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-9tphr          Container created
28m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-9tphr          Container started
27m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-9tphr          Stopping container frontend
34m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-g9dt2          Successfully assigned default/yatri-frontend-ddcfc4b5f-g9dt2 to minikube
34m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-g9dt2          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-g9dt2          Container created
34m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-g9dt2          Container started
28m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-g9dt2          Stopping container frontend
34m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-j2ns9          Stopping container frontend
27m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-jth9p          Successfully assigned default/yatri-frontend-ddcfc4b5f-jth9p to minikube
27m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-jth9p          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-jth9p          Container created
27m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-jth9p          Container started
28m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-m6tlr          Successfully assigned default/yatri-frontend-ddcfc4b5f-m6tlr to minikube
28m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-m6tlr          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-m6tlr          Container created
28m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-m6tlr          Container started
27m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-m6tlr          Stopping container frontend
34m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-s4pc6          Stopping container frontend
27m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-wxb7q          Successfully assigned default/yatri-frontend-ddcfc4b5f-wxb7q to minikube
27m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-wxb7q          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-wxb7q          Container created
27m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-wxb7q          Container started
34m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-4xj8b
34m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-g9dt2
28m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-m6tlr
28m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-9tphr
27m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-jth9p
27m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-wxb7q
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-exec/events$ kubectl get events --sort-by=.lastTimestamp
LAST SEEN   TYPE     REASON             OBJECT                                      MESSAGE
34m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-4xj8b          Successfully assigned default/yatri-frontend-ddcfc4b5f-4xj8b to minikube
27m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-ckdkk          Successfully assigned default/yatri-backend-6c58cb99c7-ckdkk to minikube
18s         Normal   Scheduled          pod/events-demo                             Successfully assigned default/events-demo to minikube
27m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-pmmqw         Successfully assigned default/web-app-nodeport-6c8f48bd-pmmqw to minikube
27m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-ls2dr    Successfully assigned default/web-app-loadbalancer-5db87c7b9-ls2dr to minikube
28m         Normal   Scheduled          pod/web-stateful-1                          Successfully assigned default/web-stateful-1 to minikube
4m34s       Normal   Scheduled          pod/exec-demo                               Successfully assigned default/exec-demo to minikube
27m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-m9kj8    Successfully assigned default/web-app-loadbalancer-5db87c7b9-m9kj8 to minikube
27m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-wxb7q          Successfully assigned default/yatri-frontend-ddcfc4b5f-wxb7q to minikube
34m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-bklnb    Successfully assigned default/web-app-loadbalancer-5db87c7b9-bklnb to minikube
38m         Normal   Scheduled          pod/get-demo                                Successfully assigned default/get-demo to minikube
27m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-82jqf          Successfully assigned default/yatri-backend-6c58cb99c7-82jqf to minikube
34m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-mq29b          Successfully assigned default/yatri-backend-6c58cb99c7-mq29b to minikube
28m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-hsztb      Successfully assigned default/web-app-clusterip-66865d4855-hsztb to minikube
34m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-k82qg      Successfully assigned default/web-app-clusterip-66865d4855-k82qg to minikube
34m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-g9dt2          Successfully assigned default/yatri-frontend-ddcfc4b5f-g9dt2 to minikube
29m         Normal   Scheduled          pod/get-demo                                Successfully assigned default/get-demo to minikube
34m         Normal   Scheduled          pod/web-stateful-2                          Successfully assigned default/web-stateful-2 to minikube
28m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-b5m9g         Successfully assigned default/web-app-nodeport-6c8f48bd-b5m9g to minikube
34m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-mfwqd    Successfully assigned default/web-app-loadbalancer-5db87c7b9-mfwqd to minikube
27m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-7hgff    Successfully assigned default/web-app-loadbalancer-5db87c7b9-7hgff to minikube
26m         Normal   Scheduled          pod/get-demo                                Successfully assigned default/get-demo to minikube
28m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-m6tlr          Successfully assigned default/yatri-frontend-ddcfc4b5f-m6tlr to minikube
27m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-jth9p          Successfully assigned default/yatri-frontend-ddcfc4b5f-jth9p to minikube
28m         Normal   Scheduled          pod/web-stateful-2                          Successfully assigned default/web-stateful-2 to minikube
34m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-t86wv      Successfully assigned default/web-app-clusterip-66865d4855-t86wv to minikube
9m38s       Normal   Scheduled          pod/logs-demo                               Successfully assigned default/logs-demo to minikube
34m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-8dvk5         Successfully assigned default/web-app-nodeport-6c8f48bd-8dvk5 to minikube
28m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-77kq4    Successfully assigned default/web-app-loadbalancer-5db87c7b9-77kq4 to minikube
34m         Normal   Scheduled          pod/web-stateful-0                          Successfully assigned default/web-stateful-0 to minikube
27m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-hbx2x      Successfully assigned default/web-app-clusterip-66865d4855-hbx2x to minikube
27m         Normal   Scheduled          pod/web-stateful-1                          Successfully assigned default/web-stateful-1 to minikube
28m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-njzxj          Successfully assigned default/yatri-backend-6c58cb99c7-njzxj to minikube
28m         Normal   Scheduled          pod/yatri-frontend-ddcfc4b5f-9tphr          Successfully assigned default/yatri-frontend-ddcfc4b5f-9tphr to minikube
27m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-46jxc      Successfully assigned default/web-app-clusterip-66865d4855-46jxc to minikube
34m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-4gnp5      Successfully assigned default/web-app-clusterip-66865d4855-4gnp5 to minikube
28m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-27dtn          Successfully assigned default/yatri-backend-6c58cb99c7-27dtn to minikube
34m         Normal   Scheduled          pod/yatri-backend-6c58cb99c7-48j4s          Successfully assigned default/yatri-backend-6c58cb99c7-48j4s to minikube
28m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-2hv7c    Successfully assigned default/web-app-loadbalancer-5db87c7b9-2hv7c to minikube
28m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-8crql         Successfully assigned default/web-app-nodeport-6c8f48bd-8crql to minikube
27m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-5xnws      Successfully assigned default/web-app-clusterip-66865d4855-5xnws to minikube
27m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-vnw4q         Successfully assigned default/web-app-nodeport-6c8f48bd-vnw4q to minikube
28m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-qwkrj    Successfully assigned default/web-app-loadbalancer-5db87c7b9-qwkrj to minikube
34m         Normal   Scheduled          pod/web-stateful-1                          Successfully assigned default/web-stateful-1 to minikube
28m         Normal   Scheduled          pod/web-stateful-0                          Successfully assigned default/web-stateful-0 to minikube
28m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-6c88t      Successfully assigned default/web-app-clusterip-66865d4855-6c88t to minikube
27m         Normal   Scheduled          pod/web-stateful-2                          Successfully assigned default/web-stateful-2 to minikube
34m         Normal   Scheduled          pod/web-app-loadbalancer-5db87c7b9-29dl4    Successfully assigned default/web-app-loadbalancer-5db87c7b9-29dl4 to minikube
34m         Normal   Scheduled          pod/web-app-nodeport-6c8f48bd-5h66j         Successfully assigned default/web-app-nodeport-6c8f48bd-5h66j to minikube
27m         Normal   Scheduled          pod/web-stateful-0                          Successfully assigned default/web-stateful-0 to minikube
28m         Normal   Scheduled          pod/web-app-clusterip-66865d4855-bgbwt      Successfully assigned default/web-app-clusterip-66865d4855-bgbwt to minikube
38m         Normal   Pulling            pod/get-demo                                Pulling image "nginx:1.27"
38m         Normal   Started            pod/get-demo                                Container started
38m         Normal   Created            pod/get-demo                                Container created
38m         Normal   Pulled             pod/get-demo                                Successfully pulled image "nginx:1.27" in 36.009s (36.009s including waiting). Image size: 72406859 bytes.
34m         Normal   Killing            pod/web-app-clusterip-66865d4855-8drpc      Stopping container nginx-web
34m         Normal   Killing            pod/web-app-clusterip-66865d4855-682mk      Stopping container nginx-web
34m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-t86wv
34m         Normal   Killing            pod/get-demo                                Stopping container nginx
34m         Normal   Killing            pod/curl-client                             Stopping container client
34m         Normal   Killing            pod/dns-test-client                         Stopping container dns-client
34m         Normal   Killing            pod/web-app-clusterip-66865d4855-zfn65      Stopping container nginx-web
34m         Normal   Killing            pod/headless-dns-client                     Stopping container dns-client
34m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-2ksrg         Stopping container web-server
34m         Normal   Killing            pod/yatri-backend-6c58cb99c7-hvl49          Stopping container backend
34m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-8dvk5
34m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-g9dt2
34m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-4xj8b
34m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-s4pc6          Stopping container frontend
34m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-mfwqd
34m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-b9nqg    Stopping container web-server
34m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-9rgrd    Stopping container web-server
34m         Normal   Killing            pod/web-stateful-2                          Stopping container nginx-stateful
34m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-5h66j
34m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-29dl4
34m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-96qww         Stopping container web-server
34m         Normal   Killing            pod/yatri-backend-6c58cb99c7-nvgvj          Stopping container backend
34m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-4gnp5
34m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-k82qg
34m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-bklnb
34m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-mq29b
34m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-48j4s
34m         Normal   Killing            pod/web-stateful-1                          Stopping container nginx-stateful
34m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-nrrj4    Stopping container web-server
34m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-j2ns9          Stopping container frontend
34m         Normal   Killing            pod/web-stateful-0                          Stopping container nginx-stateful
34m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-4xj8b          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-mfwqd    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-29dl4    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-nodeport-6c8f48bd-5h66j         Container created
34m         Normal   Started            pod/web-app-clusterip-66865d4855-4gnp5      Container started
34m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-48j4s          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-clusterip-66865d4855-4gnp5      Container created
34m         Normal   Pulled             pod/web-app-clusterip-66865d4855-4gnp5      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-g9dt2          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-5h66j         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/yatri-backend-6c58cb99c7-48j4s          Container created
34m         Normal   Started            pod/yatri-backend-6c58cb99c7-48j4s          Container started
34m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-mfwqd    Container created
34m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-29dl4    Container created
34m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-8dvk5         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Started            pod/yatri-backend-6c58cb99c7-mq29b          Container started
34m         Normal   Started            pod/web-app-clusterip-66865d4855-t86wv      Container started
34m         Normal   Created            pod/web-app-clusterip-66865d4855-t86wv      Container created
34m         Normal   Pulled             pod/web-app-clusterip-66865d4855-t86wv      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/yatri-backend-6c58cb99c7-mq29b          Container created
34m         Normal   Started            pod/web-app-clusterip-66865d4855-k82qg      Container started
34m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-bklnb    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-bklnb    Container created
34m         Normal   Created            pod/web-app-clusterip-66865d4855-k82qg      Container created
34m         Normal   Pulled             pod/web-app-clusterip-66865d4855-k82qg      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-mq29b          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
34m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-4xj8b          Container started
34m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-mfwqd    Container started
34m         Normal   Started            pod/web-app-nodeport-6c8f48bd-8dvk5         Container started
34m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-bklnb    Container started
34m         Normal   Created            pod/web-app-nodeport-6c8f48bd-8dvk5         Container created
34m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-g9dt2          Container started
34m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-g9dt2          Container created
34m         Normal   Started            pod/web-app-nodeport-6c8f48bd-5h66j         Container started
34m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-4xj8b          Container created
34m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-29dl4    Container started
34m         Normal   Started            pod/web-stateful-0                          Container started
34m         Normal   Created            pod/web-stateful-0                          Container created
34m         Normal   Pulled             pod/web-stateful-0                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Started            pod/web-stateful-1                          Container started
34m         Normal   Created            pod/web-stateful-1                          Container created
34m         Normal   Pulled             pod/web-stateful-1                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Pulled             pod/web-stateful-2                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
34m         Normal   Started            pod/web-stateful-2                          Container started
34m         Normal   Created            pod/web-stateful-2                          Container created
29m         Normal   Pulled             pod/get-demo                                Container image "nginx:1.27" already present on machine and can be accessed by the pod
29m         Normal   Created            pod/get-demo                                Container created
29m         Normal   Started            pod/get-demo                                Container started
28m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-njzxj
28m         Normal   Killing            pod/web-app-clusterip-66865d4855-t86wv      Stopping container nginx-web
28m         Normal   Killing            pod/web-stateful-0                          Stopping container nginx-stateful
28m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-bklnb    Stopping container web-server
28m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-2hv7c
28m         Normal   Killing            pod/yatri-backend-6c58cb99c7-mq29b          Stopping container backend
28m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-27dtn
28m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-mfwqd    Stopping container web-server
28m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-77kq4
28m         Normal   Killing            pod/web-app-clusterip-66865d4855-k82qg      Stopping container nginx-web
28m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-5h66j         Stopping container web-server
28m         Normal   Killing            pod/web-app-clusterip-66865d4855-4gnp5      Stopping container nginx-web
28m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-4xj8b          Stopping container frontend
28m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-qwkrj
28m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-6c88t
28m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-hsztb
28m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-g9dt2          Stopping container frontend
28m         Normal   Killing            pod/get-demo                                Stopping container nginx
28m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-bgbwt
28m         Normal   Killing            pod/web-stateful-1                          Stopping container nginx-stateful
28m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-8dvk5         Stopping container web-server
28m         Normal   Killing            pod/yatri-backend-6c58cb99c7-48j4s          Stopping container backend
28m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-29dl4    Stopping container web-server
28m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-8crql
28m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-b5m9g
28m         Normal   Killing            pod/web-stateful-2                          Stopping container nginx-stateful
28m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-m6tlr
28m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-9tphr
28m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-8crql         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-9tphr          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-2hv7c    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-2hv7c    Container created
28m         Normal   Started            pod/yatri-backend-6c58cb99c7-27dtn          Container started
28m         Normal   Created            pod/web-app-clusterip-66865d4855-bgbwt      Container created
28m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-m6tlr          Container created
28m         Normal   Created            pod/yatri-backend-6c58cb99c7-27dtn          Container created
28m         Normal   Pulled             pod/web-app-clusterip-66865d4855-bgbwt      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-nodeport-6c8f48bd-b5m9g         Container created
28m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-b5m9g         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-27dtn          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
28m         Normal   Started            pod/web-app-clusterip-66865d4855-6c88t      Container started
28m         Normal   Created            pod/web-app-clusterip-66865d4855-hsztb      Container created
28m         Normal   Created            pod/web-app-clusterip-66865d4855-6c88t      Container created
28m         Normal   Created            pod/web-app-nodeport-6c8f48bd-8crql         Container created
28m         Normal   Pulled             pod/web-app-clusterip-66865d4855-hsztb      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-77kq4    Container created
28m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-njzxj          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/yatri-backend-6c58cb99c7-njzxj          Container created
28m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-77kq4    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Pulled             pod/web-app-clusterip-66865d4855-6c88t      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Started            pod/yatri-backend-6c58cb99c7-njzxj          Container started
28m         Normal   Started            pod/web-app-clusterip-66865d4855-hsztb      Container started
28m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-9tphr          Container created
28m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-m6tlr          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-qwkrj    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-qwkrj    Container created
28m         Normal   Started            pod/web-app-clusterip-66865d4855-bgbwt      Container started
28m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-m6tlr          Container started
28m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-qwkrj    Container started
28m         Normal   Started            pod/web-app-nodeport-6c8f48bd-b5m9g         Container started
28m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-9tphr          Container started
28m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-77kq4    Container started
28m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-2hv7c    Container started
28m         Normal   Started            pod/web-app-nodeport-6c8f48bd-8crql         Container started
28m         Normal   Created            pod/web-stateful-0                          Container created
28m         Normal   Pulled             pod/web-stateful-0                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Started            pod/web-stateful-0                          Container started
28m         Normal   Started            pod/web-stateful-1                          Container started
28m         Normal   Created            pod/web-stateful-1                          Container created
28m         Normal   Pulled             pod/web-stateful-1                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Pulled             pod/web-stateful-2                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
28m         Normal   Created            pod/web-stateful-2                          Container created
28m         Normal   Started            pod/web-stateful-2                          Container started
27m         Normal   Killing            pod/yatri-backend-6c58cb99c7-njzxj          Stopping container backend
27m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-77kq4    Stopping container web-server
27m         Normal   Killing            pod/web-app-clusterip-66865d4855-6c88t      Stopping container nginx-web
27m         Normal   Killing            pod/web-stateful-1                          Stopping container nginx-stateful
27m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-82jqf
27m         Normal   SuccessfulCreate   replicaset/yatri-backend-6c58cb99c7         Created pod: yatri-backend-6c58cb99c7-ckdkk
27m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-9tphr          Stopping container frontend
27m         Normal   Killing            pod/web-stateful-0                          Stopping container nginx-stateful
27m         Normal   Killing            pod/web-stateful-2                          Stopping container nginx-stateful
27m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-2hv7c    Stopping container web-server
27m         Normal   Killing            pod/web-app-loadbalancer-5db87c7b9-qwkrj    Stopping container web-server
27m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-m9kj8
27m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-7hgff
27m         Normal   Killing            pod/web-app-clusterip-66865d4855-bgbwt      Stopping container nginx-web
27m         Normal   SuccessfulCreate   replicaset/web-app-loadbalancer-5db87c7b9   Created pod: web-app-loadbalancer-5db87c7b9-ls2dr
27m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-8crql         Stopping container web-server
27m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-pmmqw
27m         Normal   SuccessfulCreate   replicaset/web-app-nodeport-6c8f48bd        Created pod: web-app-nodeport-6c8f48bd-vnw4q
27m         Normal   Killing            pod/web-app-nodeport-6c8f48bd-b5m9g         Stopping container web-server
27m         Normal   Killing            pod/yatri-frontend-ddcfc4b5f-m6tlr          Stopping container frontend
27m         Normal   Killing            pod/yatri-backend-6c58cb99c7-27dtn          Stopping container backend
27m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-jth9p
27m         Normal   SuccessfulCreate   replicaset/yatri-frontend-ddcfc4b5f         Created pod: yatri-frontend-ddcfc4b5f-wxb7q
27m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-46jxc
27m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-5xnws
27m         Normal   SuccessfulCreate   replicaset/web-app-clusterip-66865d4855     Created pod: web-app-clusterip-66865d4855-hbx2x
27m         Normal   Killing            pod/web-app-clusterip-66865d4855-hsztb      Stopping container nginx-web
27m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-ls2dr    Container created
27m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-m9kj8    Container created
27m         Normal   Started            pod/yatri-backend-6c58cb99c7-82jqf          Container started
27m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-82jqf          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
27m         Normal   Pulled             pod/yatri-backend-6c58cb99c7-ckdkk          Container image "python:3.11-alpine3.19" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/yatri-backend-6c58cb99c7-ckdkk          Container created
27m         Normal   Started            pod/yatri-backend-6c58cb99c7-ckdkk          Container started
27m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-pmmqw         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Pulled             pod/web-app-nodeport-6c8f48bd-vnw4q         Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Started            pod/web-app-clusterip-66865d4855-hbx2x      Container started
27m         Normal   Created            pod/web-app-clusterip-66865d4855-hbx2x      Container created
27m         Normal   Pulled             pod/web-app-clusterip-66865d4855-hbx2x      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-nodeport-6c8f48bd-vnw4q         Container created
27m         Normal   Pulled             pod/web-app-clusterip-66865d4855-46jxc      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/yatri-backend-6c58cb99c7-82jqf          Container created
27m         Normal   Created            pod/web-app-clusterip-66865d4855-46jxc      Container created
27m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-7hgff    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-loadbalancer-5db87c7b9-7hgff    Container created
27m         Normal   Pulled             pod/web-app-clusterip-66865d4855-5xnws      Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-clusterip-66865d4855-5xnws      Container created
27m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-m9kj8    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/web-app-nodeport-6c8f48bd-pmmqw         Container created
27m         Normal   Pulled             pod/web-app-loadbalancer-5db87c7b9-ls2dr    Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-jth9p          Container created
27m         Normal   Started            pod/web-app-nodeport-6c8f48bd-pmmqw         Container started
27m         Normal   Started            pod/web-app-nodeport-6c8f48bd-vnw4q         Container started
27m         Normal   Started            pod/web-app-clusterip-66865d4855-5xnws      Container started
27m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-wxb7q          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-7hgff    Container started
27m         Normal   Started            pod/web-app-clusterip-66865d4855-46jxc      Container started
27m         Normal   Created            pod/yatri-frontend-ddcfc4b5f-wxb7q          Container created
27m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-ls2dr    Container started
27m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-wxb7q          Container started
27m         Normal   Started            pod/web-app-loadbalancer-5db87c7b9-m9kj8    Container started
27m         Normal   Pulled             pod/yatri-frontend-ddcfc4b5f-jth9p          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   SuccessfulCreate   statefulset/web-stateful                    Create Pod web-stateful-0 in StatefulSet web-stateful successful
27m         Normal   Started            pod/yatri-frontend-ddcfc4b5f-jth9p          Container started
27m         Normal   Created            pod/web-stateful-0                          Container created
27m         Normal   Started            pod/web-stateful-0                          Container started
27m         Normal   SuccessfulCreate   statefulset/web-stateful                    Create Pod web-stateful-1 in StatefulSet web-stateful successful
27m         Normal   Pulled             pod/web-stateful-0                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Pulled             pod/web-stateful-1                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   SuccessfulCreate   statefulset/web-stateful                    Create Pod web-stateful-2 in StatefulSet web-stateful successful
27m         Normal   Started            pod/web-stateful-1                          Container started
27m         Normal   Created            pod/web-stateful-1                          Container created
27m         Normal   Created            pod/web-stateful-2                          Container created
27m         Normal   Pulled             pod/web-stateful-2                          Container image "nginx:1.25-alpine" already present on machine and can be accessed by the pod
27m         Normal   Started            pod/web-stateful-2                          Container started
26m         Normal   Created            pod/get-demo                                Container created
26m         Normal   Pulled             pod/get-demo                                Container image "nginx:1.27" already present on machine and can be accessed by the pod
26m         Normal   Started            pod/get-demo                                Container started
9m38s       Normal   Pulling            pod/logs-demo                               Pulling image "busybox:1.36"
9m31s       Normal   Pulled             pod/logs-demo                               Successfully pulled image "busybox:1.36" in 6.936s (6.936s including waiting). Image size: 2217006 bytes.
9m31s       Normal   Created            pod/logs-demo                               Container created
9m31s       Normal   Started            pod/logs-demo                               Container started
4m33s       Normal   Started            pod/exec-demo                               Container started
4m33s       Normal   Created            pod/exec-demo                               Container created
4m33s       Normal   Pulled             pod/exec-demo                               Container image "nginx:1.27" already present on machine and can be accessed by the pod
18s         Normal   Started            pod/events-demo                             Container started
18s         Normal   Created            pod/events-demo                             Container created
18s         Normal   Pulled             pod/events-demo                             Container image "nginx:1.27" already present on machine and can be accessed by the pod
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-exec/events$ kubectl describe pod events-demo
Name:             events-demo
Namespace:        default
Priority:         0
Service Account:  default
Node:             minikube/192.168.49.2
Start Time:       Mon, 21 Sep 2026 12:27:43 +0530
Labels:           <none>
Annotations:      <none>
Status:           Running
IP:               10.244.0.72
IPs:
  IP:  10.244.0.72
Containers:
  nginx:
    Container ID:   containerd://83f97cbcfa1c6867221644e549a8b86ef8874dcc3c0696caac9e09daa77cf291
    Image:          nginx:1.27
    Image ID:       docker.io/library/nginx@sha256:6784fb0834aa7dbbe12e3d7471e69c290df3e6ba810dc38b34ae33d3c1c05f7d
    Port:           <none>
    Host Port:      <none>
    State:          Running
      Started:      Mon, 21 Sep 2026 12:27:43 +0530
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-c9kdh (ro)
Conditions:
  Type                        Status
  PodReadyToStartContainers   True 
  Initialized                 True 
  Ready                       True 
  ContainersReady             True 
  PodScheduled                True 
Volumes:
  kube-api-access-c9kdh:
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
  Type    Reason     Age   From               Message
  ----    ------     ----  ----               -------
  Normal  Scheduled  27s   default-scheduler  Successfully assigned default/events-demo to minikube
  Normal  Pulled     27s   kubelet            spec.containers{nginx}: Container image "nginx:1.27" already present on machine and can be accessed by the pod
  Normal  Created    27s   kubelet            spec.containers{nginx}: Container created
  Normal  Started    27s   kubelet            spec.containers{nginx}: Container started
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-exec/events$ kubectl describe pod events-demo
Name:             events-demo
Namespace:        default
Priority:         0
Service Account:  default
Node:             minikube/192.168.49.2
Start Time:       Mon, 21 Sep 2026 12:27:43 +0530
Labels:           <none>
Annotations:      <none>
Status:           Running
IP:               10.244.0.72
IPs:
  IP:  10.244.0.72
Containers:
  nginx:
    Container ID:   containerd://83f97cbcfa1c6867221644e549a8b86ef8874dcc3c0696caac9e09daa77cf291
    Image:          nginx:1.27
    Image ID:       docker.io/library/nginx@sha256:6784fb0834aa7dbbe12e3d7471e69c290df3e6ba810dc38b34ae33d3c1c05f7d
    Port:           <none>
    Host Port:      <none>
    State:          Running
      Started:      Mon, 21 Sep 2026 12:27:43 +0530
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-c9kdh (ro)
Conditions:
  Type                        Status
  PodReadyToStartContainers   True 
  Initialized                 True 
  Ready                       True 
  ContainersReady             True 
  PodScheduled                True 
Volumes:
  kube-api-access-c9kdh:
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
  Type    Reason     Age   From               Message
  ----    ------     ----  ----               -------
  Normal  Scheduled  66s   default-scheduler  Successfully assigned default/events-demo to minikube
  Normal  Pulled     67s   kubelet            spec.containers{nginx}: Container image "nginx:1.27" already present on machine and can be accessed by the pod
  Normal  Created    67s   kubelet            spec.containers{nginx}: Container created
  Normal  Started    67s   kubelet            spec.containers{nginx}: Container started
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-exec/events$ 
```