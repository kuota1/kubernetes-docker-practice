# Kubernetes & Docker Practice Repository

This repository contains **hands-on practice exercises** developed during my DevOps & Cloud Engineering learning journey.  
It includes **Docker examples, Bash automation scripts, and Kubernetes YAML manifests** covering a wide range of topics.

---

## Repository Structure

- **1-docker/** → Basic Docker app with Deployment, Service, Compose, and Dockerfile.  
- **2-docker/** → Alternative Docker setup with Compose and Service files.  
- **3-docker/** → Node.js sample app with Dockerfile and package.json.  
- **bash/** → Utility Bash scripts for system automation:  
  - `backup.sh` → File backup utility.  
  - `contar_lineas_palabras_caracteres.sh` → Count lines, words, and characters in a file.  
  - `count_extensions.sh` → Count file extensions in a directory.  
  - `revision_de_archivo_y_backup.sh` → File validation + backup automation.  
- **yaml/** → Kubernetes manifests organized by category:  
  - **Pods & Config**: `pod.yaml`, `pod-namespace.yaml`, `pod-definition-config-map.yaml`, `pod-definition-multicontainer.yaml`, etc.  
  - **Services & Networking**: `service.yaml`, `service-cluster-ip.yaml`, `service-load-balancer.yaml`, `network-policy.yaml`, `ingress-controler/`.  
  - **Workloads**: `replicaset-definition.yaml`, `relicacion-controler.yaml`, `deamonset-definition.yaml`, `hpa-autoescalin.yaml`.  
  - **Storage**: `persistent-volume.yaml`, `persistent-volume-claim.yaml`, `volume-mount.yaml`.  
  - **Security & RBAC**: `cluster-admin-role.yaml`, `cluster-admin-role-binding.yaml`, `developer-role.yaml`, `devuser-developer-binding.yaml`, `secret-data.yaml`, `pod-definition-secret.yaml`.  
  - **Resources & Scheduling**: `limit-range-cpu.yaml`, `compute-quota.yaml`, `resource-quotas.yaml`, `resources-requests.yaml`, `node-affinity.yaml`, `node-selection.yaml`, `pod-definition-tolerance.yaml`, `prority-classes.yaml`.

---

## Usage

Clone the repository:
```bash
git clone https://github.com/kuota1/kubernetes-docker-practice.git
cd kubernetes-docker-practice
Apply Kubernetes manifests:

bash
Copy code
kubectl apply -f yaml/pod.yaml
kubectl apply -f yaml/replicaset-definition.yaml
Run Bash scripts:

bash
Copy code
./bash/backup.sh
./bash/count_extensions.sh
 Notes
These examples were created for learning and practicing DevOps concepts.

They are not production-ready, but they illustrate key skills for Docker, Kubernetes, and Bash scripting.

Repository intended to showcase hands-on practice during DevOps & Cloud Engineering preparation.

yaml
Copy code
