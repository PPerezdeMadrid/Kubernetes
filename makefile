ejec:
	sudo usermod -aG docker $USER && newgrp docker
	sudo docker build -t imagen_practica_sie_kubernetes .
	sudo docker save -o imagen_practica_sie_kubernetes.tar imagen_practica_sie_kubernetes:latest
	minikube cp imagen_practica_sie_kubernetes.tar minikube:/home/docker/imagen_practica_sie_kubernetes.tar
	minikube ssh "docker load -i /home/docker/imagen_practica_sie_kubernetes.tar"
	kubectl apply -f pod.yaml


