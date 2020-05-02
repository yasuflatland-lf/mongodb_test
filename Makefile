start:
	kubectl apply -f namespace.yml
	helm install mongodb --namespace dev --set mongodbRootPassword=password,mongodbUsername=test-user,mongodbPassword=password,mongodbDatabase=test bitnami/mongodb
	kubectl apply -f admin-development.yml

stop:
	kubectl delete -f admin-development.yml
	helm delete mongodb --namespace dev
	kubectl delete -f namespace.yml

info:
	kubectl get namespace -o wide --all-namespaces
	kubectl get deployment -o wide --all-namespaces
	kubectl get svc -o wide --all-namespaces
	kubectl get configMap -o wide --all-namespaces
	kubectl get pod -o wide --all-namespaces