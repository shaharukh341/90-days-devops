***Kubernetes Architecture***


               +------------------------+
               |     kubectl (CLI)     |
               +------------------------+
                         |
                         v
              [ Kubernetes API Server ]
                         |
    +--------------------+-------------------+
    |                    |                   |
[ Scheduler ]    [ Controller Manager ]   [ etcd ]
                                        (Cluster state DB)

                         |
              +-------------------+
              |       Nodes       |
              +-------------------+
             /         |           \
            v          v            v

      +------------+  +------------+  +------------+
      |   Kubelet  |  |   Kubelet  |  |   Kubelet  |
      |   (Node)   |  |   (Node)   |  |   (Node)   |
      +-----+------+  +-----+------+  +-----+------+
            |               |               |
      +-----v-----+   +-----v-----+   +-----v-----+
      |  Container |  |  Container |  |  Container |
      |   Runtime  |  |   Runtime  |  |   Runtime  |
      +-----+------+  +-----+------+  +-----+------+
            |               |               |
      [ Pods, Services, Deployments... ] ← Your App

| Component              | Role                                                                           |
| ---------------------- | ------------------------------------------------------------------------------ |
| **API Server**         | Front door to the cluster. All commands (via `kubectl`, UI, or CI/CD) go here. |
| **etcd**               | Distributed key-value store. Stores the entire cluster state.                  |
| **Scheduler**          | Decides **which node** should run a new pod.                                   |
| **Controller Manager** | Handles background tasks like replica scaling, node health checks, and more.   |


| Component             | Role                                                                         |
| --------------------- | ---------------------------------------------------------------------------- |
| **Kubelet**           | Talks to the API server. Ensures containers are running as per instructions. |
| **Container Runtime** | Runs containers. Could be Docker, containerd, or CRI-O.                      |
| **Kube Proxy**        | Manages networking rules for communication between pods and external world.  |

| Object         | Description                                                                   |
| -------------- | ----------------------------------------------------------------------------- |
| **Pod**        | Smallest deployable unit (holds one or more containers)                       |
| **Deployment** | Ensures the desired number of Pods are running (auto-restart, rolling update) |
| **Service**    | Exposes Pods via stable networking (ClusterIP, NodePort, LoadBalancer)        |
| **Ingress**    | HTTP routing (like an Nginx reverse proxy)                                    |

| Feature        | Use                                         |
| -------------- | ------------------------------------------- |
| **RBAC**       | Role-based access control                   |
| **Secrets**    | Store sensitive data like passwords, tokens |
| **Namespaces** | Isolate workloads and users                 |
