### Kubectl Commands

- k cluster-info
- k get nodes

#### Pod
- k get pod pod_name -o yaml > pod.yaml
- k edit pod pod_name           ----> only image, activeDeadlineSeconds & tolerations are editable
- k run pod_name --image=image_name 

Namespace
- access service in another namespace: service_name.namespace_name.svc.cluster.local
- k config use-context --current --namespace=namespace_name


