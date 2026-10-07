```text
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-log$ kubectl apply -f pod.yaml
pod/logs-demo created
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-log$ kubectl get pod logs-demo
NAME        READY   STATUS    RESTARTS   AGE
logs-demo   1/1     Running   0          25s
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-log$ kubectl logs logs-demo
Application started
Connecting to database...
Database connection successful
Application is running
Application is healthy
Application is healthy
Application is healthy
Application is healthy
Application is healthy
Application is healthy
somyajit-saha@somyajit-saha-IdeaPad-Slim-3-15IRH8:~/learn_devops/k8-troubleshoot/kubectl-log$ kubectl logs -f logs-demo
Application started
Connecting to database...
Database connection successful
Application is running
Application is healthy
Application is healthy
Application is healthy
Application is healthy
Application is healthy
Application is healthy
Application is healthy
Application is healthy
Application is healthy
```