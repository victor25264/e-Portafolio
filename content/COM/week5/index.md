---
title: "Cloud Native Technology Part 2" 
date: 2026-02-24
tags: [""]
author: ["Victor"]
description: "Cloud Native Technology Part 2" 
summary: "AI in cloud computing has multiple advantages and use cases. Still, there are open challenges that need to be addressed." 
cover:
    # image: "paper1.png"
    alt: "AI in cloud computing has multiple advantages and use cases. Still, there are open challenges that need to be addressed."
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Cloud Native Technology Part 2

##### AI-Driven Cloud Computing
+ AI Leverages cloud scalability and processing
+ Analyses large datasets, automates operations, and enhances decision-making processes
+ Cloud providers offer prebuilt AI services
+ Benefits of AI and Cloud integration:
  + Enhance scalability as AI requires significant computing power
  + Improved automation: leverage AI-driven automation to streamline repetitive tasks
  + Real-time analytics: the organization can analyse data, enabling faster and more informed decision-making
  + Foster innovation: allow developers to experiment and create advanced applications
+ Cloud computing AI tools:
  + AWS SageMaker
  + Google Cloud AI Platform
  + Microsoft’s Azure Machine Learning
  + IBM Watson and OpenAI’s APIs
+ AI-driven automation in the Cloud
  + IT Operations Automation: AI can predict potential system failures based on usage patterns
  + Process Automation: enables process automation in business operations
  + DevOps Automation: Integrate CI/CD pipelines to optimize the software development lifecycle
+ AI in Security and Threat Detection
  + AI can analyse patterns in network traffic, user behavior, and application performance to detect threats
  + AI can improve incident response by automating threat mitigation
+ Challenges of AI in Cloud
  + Cost Management: the organization must optimize usage and leverage cost-effective solutions
  + Data Privacy and Security: storing and processing sensitive data introduces risk based on compliance and regulations
  + Skill Gap: Implementing AI requires specialized knowledge; organizations struggle to find and retain these professionals
  + Algorithm Bias: AI can provide unfair outcomes based on bias
+ Ethical Considerations:
  + Privacy: AI often processes sensitive personal data, and questions arise about how the data is collected, stored, and processed.
  + Algorithm Fairness: AI can perpetuate or amplify biases based on its training data.
  + Accountability: organizations must define accountability and ensure human oversight in critical scenarios
  + AI Misuse: Organizations must implement safeguards to prevent misuse


---

#### Formative Activity

##### Kubernetes Cluster Deployment

Redis is a NoSQL key-value store that is used mainly by applications as a cache or database for fast response. Redis stores data in memory instead of disk, which makes for faster access. In this post, Redis will be deployed on a Kubernetes cluster using a Helm chart to manage the lifecycle of the deployment. Redis can be a crucial part of a 12-factor application because it allows for separating the cache from the application, following multiple principles at the same time.

First, Helm is a tool that helps define, install, and upgrade complex Kubernetes applications. It provides charts that are easy to create, version, share, and publish. Helm charts can help a 12-factor app for deployment, configuration, dependency management, and other factors because of the features they come with. The following are the commands to install Helm. 

```bash
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4
chmod 700 get_helm.sh
./get_helm.sh
```

Helm can use repos that are charts or a group of charts published by organizations and developers. Bitmai repo is used because it follows best practices and uses hardened images, which give an improvement in security and performance. The following command adds the bitmani repo where the Redis chart is stored.

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
```

The deployment of a chart can be done without any parameters, following the defaults set on the chart. On the other hand, a values file can be used to set important parameters like passwords, replicas, and others. The following is the content of the redis-val.yaml file is use to store the values used.

```bash
global:
  redis:
    password: password
replica:
  replicaCount: 2
sentinel:
  enabled: true
```

Helm will work only if the Kubernetes cluster and kubectl are configured correctly. We can check the status by using:

```bash
$ kubectl version

Client Version: v1.35.1
Kustomize Version: v5.7.1
Server Version: v1.35.1
```

```bash
$ kubectl cluster-info

Kubernetes control plane is running at https://127.0.0.1:32786
CoreDNS is running at https://127.0.0.1:32786/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

After verifying the status of the cluster, Helm can deploy the chart.

```bash
helm install redisha bitnami/redis --values redis-val.yaml
```

This will start the necessary pods for the application work. In our case, two pods will be created because of the replicaCount value. To check this, we can list the current pods, as we did not specify the namespace, it will be created in the default namespace.

```bash
kubectl get pods

NAME                    READY   STATUS    RESTARTS   AGE
redis-sentinel-node-0   2/2     Running   0          102s
redis-sentinel-node-1   2/2     Running   0          63s
```

We can update the values if we need more replicas. For instance, changing the replicaCount to 3 in the values file. Then, the help upgrade command is used.

```bash
helm upgrade redisha bitnami/redis --values redis.yaml
```

Now, checking the pods will return three Redis pods.

```bash
kubectl get pods

NAME                    READY   STATUS    RESTARTS   AGE
redis-sentinel-node-0   2/2     Running   0          2m39s
redis-sentinel-node-1   2/2     Running   0          2m
redis-sentinel-node-2   0/2     Running   0          3s
```
In this post, Helm is used to deploy a simple Redis HA cluster. Helm is an IaC tool that can be used to manage the whole lifecycle of an application. Helm provides multiple benefits that 12-factor applications need.


##### Reflexion

+ AI has entered the market, allowing automation of repetitive tasks and improving efficiency in organizations. Still, these are not perfect tools and can make critical mistakes that can even disrupt businesses. The current dangers of AI are that it tends to hallucinate, causing it to issue wrong commands that can cause serious issues. I believe that AI can be useful in simple tasks, but on complex issues it should take a secondary role as it still makes critical mistakes.




---

#### Reading 

+ al., F. (2012) Fog Computing and Its Role in the Internet of Things. MCC ’12: Proceedings of the first edition of the MCC workshop on Mobile cloud computing. 13–16.
+ Gupta (2016) iFogSim: A Toolkit for Modeling and Simulation of Resource Management Techniques in Internet of Things, Edge and Fog Computing Environments.
+ Hamzaoui, I. et al. (2024) A Topical Review on Container-Based Cloud Revolution: Multi-Directional Challenges, and Future Trends. SN computer science. [Online] 5 (4), .

