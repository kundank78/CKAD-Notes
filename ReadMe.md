### Kubectl Commands

- k cluster-info
- k get nodes

### Namespace
- access service in another namespace: service_name.namespace_name.svc.cluster.local
- k config set-context --current --namespace=namespace_name

### Debugging
- k port-forward svc/my-service 5000    
- k port-forward my-pod 5000:6000       listen on 5000 on localhost

https://killer.sh/attendee/40458a62-e640-4a74-b163-86ad84b2863e

## Helm
helm repo add [repository-name] [url]
helm repo remove [repository-name]
helm repo update
helm list
helm search hub package_name
helm search repo package_name
helm show chart repo/package
helm show values repo/package

helm get manifest release_name
helm install release_name chart_name
helm status release_name
helm upgrade release_name repo/package
helm history release_name
helm rollback release_name version
helm uninstall release-name
helm pull --untar repo/chart_name
-> https://www.tutorialworks.com/helm-cheatsheet/

alias k=kubectl                         # will already be pre-configured
export do="--dry-run=client -o yaml"    # k create deploy nginx --image=nginx $do
export now="--force --grace-period 0"   # k delete pod x $now