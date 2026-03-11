---
title: "Cloud Security and Risk Assessment" 
date: 2026-03-10
tags: [""]
author: ["Victor"]
description: "Cloud Security and Risk Assessment" 
summary: "Cloud-native technology is important for taking advantage of many of the benefits of the cloud." 
cover:
    # image: "paper1.png"
    alt: "Cloud-native technology is important for taking advantage of many of the benefits of the cloud."
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Cloud Security and Risk Assessment

##### Cloud-Native Technology and Containerisation
+ Cloud-Native
  + Refers to the design and deployment of applications that take full advantage of cloud computing:
    + Scalable
    + Resilient
    + Adaptable
  + Typically use microservices to break down the application into small, independent components
  + takes advantage of orchestration tools to automate, scale, and manage containers
  + Terraform:
    + Open Source infrastructure as code (IaC) tool
    + ensures consistency, scalability, and repeatability across environments
    + configuration files describe the desired state of resources
    + Terraform’s strengths are its support for multi-cloud environments  
  + Ansible
    + ensures that the software and configurations are deployed and maintained consistently
    + uses simple YAML files called playbooks to define tasks
    + is that it’s agentless
  + OpenStack
    + a suite of tools and services that allow organisations to deploy and operate their own cloud
    + is modular, meaning it consists of several components that can be integrated to meet specific needs
    + its open-source nature and highly scalable, capable of supporting clouds ranging from small private setups to large-scale public deployments
  + Serverless
    + cloud provider handles provisioning, scaling, and management
    + companies focus on code
    + Some examples:
      + AWS Lambda
      + Azure functions
      + Google Cloud Functions
  + Cloud design patterns
    + best practices and templates to design robust cloud apps
    + not prescriptive but gives general guidelines
      + resilience:
        + high availability and fault tolerance
      + scalability
        + address dynamic allocation of resources
      + security
        + strategies for safeguarding data, applications, and infrastructure
    + Resilient Design Patterns:
      + Circuit breaker: 
        + prevents cascading failures in distributed systems
        + monitors interactions between components and temporarily halts requests to a failing service to prevent cascading failures
      + Failover
        + ensures that a backup system or resource takes over automatically when the primary one fails
        + particularly important for mission-critical applications
      + Bulkhead
        + isolates components within a system to prevent a failure 
      + Retry: 
        + transient failures are retry to improve reliability from affecting the entire application
    + Scalability Design Patterns
      + Auto-Scaling:
        + automatically adjusts the number of instances or resources based on demand
      + load balancing
        + distributes incoming traffic across multiple servers to ensure no single server becomes overwhelmed
      + sharding
        + divides a database into smaller, more manageable pieces, or shards
        + allows the system to handle more traffic and larger datasets without compromising performance
    + Cloud Security Patterns
      + Identity Federation:
        + allows users to access multiple systems with a single set of credentials
        + reduces the risk of weak passwords and simplifies user management
      + Encrypted Storage
        + that all sensitive data stored in the cloud is encrypted, both at rest and in transit
      + Security Token
        + provides temporary credentials for accessing cloud resources
        + tokens have expiration times, reducing the risk of long-term exposure in case they are leaked
+ Containerisation
  + packages of application and their dependencies
  + isolated for consistency across environments
  + containers share the host kernel, making faster and resource-efficient instances
  + Docker:
    + one of the most widely used containerisation platforms
    + can standardize development environments, making it easy to work on features
    + Airbnb and Pinterest use Docker
  + Kubernetes
    + design to orchestrate containers by automating deployment, scaling, and operating
    + groups containers into logical units called pods
    + offer load balancing and fault tolerance capability
  

##### Serverless Computing (Baldini, et al. 2017) 

+ emerging as a new and compelling paradigm for the deployment of cloud applications
+ abstracts away most, if not all, operational concerns
+ lowers the cost of deploying cloud code by charging for execution time rather than resource allocation
+ challenging and requires relinquishing to the platform design decisions that concern quality-of-service (QoS) monitoring, scaling, and fault-tolerance properties
+ Characteristics:
  + Cost: usage is metered and users pay only for the time and resources used when serverless functions are running
  + Performance and limits: variety of limits set on the runtime resource requirements of serverless code, including the number of concurrent requests, and the maximum memory and CPU resources available to a function invocation
  + Programming languages: Serverless services support a wide variety of programming languages
  + Programming model: serverless platforms typically execute a single main function
  +  Composability: The platforms generally offer some way to invoke one serverless function from another, but some platforms provide higher-level mechanisms for composing these functions
  + Deployment: Platforms strive to make deployment as simple as possible
  + Security and accounting: multi-tenant and must isolate the execution of functions between users
  + Monitoring and debugging: Every platform supports basic debugging by using print statements that are recorded in the execution logs
+ Benefits and drawbacks:
  + Developers:  
    + force application developers to carefully think about the cost of their code when modularizing their applications
  + Consumer: 
    + a cloud developer no longer needs to provision and manage servers.
    + The stateless programming model gives the provider more control over the software stack
    + model offered by the platform may be too constraining for some applications

---

##### Reflexion

+ Cloud advances have improved the efficiency and resilience of cloud-native applications. These new models provide benefits to users, developers, and cloud providers. But it is important to consider that new technologies will also pose additional challenges, as they expand an organization's threat surface.




---

#### Reading 

+ Baldini, I. et al. (2017) Serverless Computing: Current Trends and Open Problems.

+ Mather, T. et al. (2009) Cloud Security and Privacy. 1st edition. O’Reilly Media, Inc.
+ National Institute of Standards and Technology (NIST) (2024) The NIST Cybersecurity Framework (CSF) 2.0. NIST Cybersecurity White Paper 29. Available at: https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.29.pdf (Accessed: 24 February 2026).

