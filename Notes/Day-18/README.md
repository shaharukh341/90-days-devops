Introduction to Load Balancers (AWS ELB Focus)

📘 What is a Load Balancer?
A Load Balancer (LB) distributes incoming traffic across multiple backend servers to:

✅ Improve performance

✅ Ensure high availability

✅ Eliminate single points of failure

| Load Balancer            | Layer           | Use Case                                   |
| ------------------------ | --------------- | ------------------------------------------ |
| **Classic LB (CLB)**     | L4 & L7         | Legacy, supports HTTP/HTTPS/TCP            |
| **Application LB (ALB)** | L7 (HTTP/HTTPS) | Web apps, path-based or host-based routing |
| **Network LB (NLB)**     | L4 (TCP/UDP)    | High-performance, low latency apps         |
| **Gateway LB**           | L3              | Third-party virtual appliances (firewalls) |
