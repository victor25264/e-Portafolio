---
title: "Cloud Design Tools" 
date: 2026-02-10
tags: ["IaC","Terraform","CloudFormation","Ansible"]
author: ["Victor"]
description: "Design tools enable drafting application architectures and testing them in a simple, repeatable way." 
summary: "Design tools enable drafting application architectures and testing them in a simple, repeatable way." 
cover:
    # image: "paper1.png"
    alt: ""
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---
#### Cloud Design Tools
+ Design and structure of cloud based systems

#####  Cloud Architecture Frameworks and Infrastructure as Code (IaC)
+ Popular IaC:
  + Terraform
    + Developed by Hashicorp
    + Uses declarative IaC to define infrastructure configuration
    + Supports multi-cloud to manage resources in AWS, Azure, GCP, and others
  + AWS CloudFormation
    + Offered by AWS
    + Native IaC service design to manage AWS resources
    + Limited to AWS, but with deep integration with the AWS services
  + Ansible
    + IaC with configuration management
    + Uses simple YAML
    + Often used for automating repetitive tasks



##### AI in cloud systems
+ AI-driven cloud optimization can automate allocation and scalability, and enhance security.


##### Kubernetes (Pushkar & Nigel, 2025)
+ Orchestration for containerized, cloud-native microservice applications; uses YAML for configuration.
+ Control plane is a collection of system services to schedule apps, implement self-healing, manage scaling, and other operations.
+ Worker nodes run business applications using different runtimes
+ Pods are the atomic unit of scheduling in K8S and can run VMs, Wasm, apps, and more.

##### Cost of awareness in IaC (Feitosa et al., 2024)
+ Cost awareness in commits:
  + Monitoring solutions can be expensive
  + Tunnigm of instances and storage to manage cost
+ Cost awareness in issues
  + Present more explanations around cost
  + It can complement the commit to understand resons of change
+ Knowledge Organization
  + Affect outcomes such as increasing awareness or managing costs.

---

#### Collaborative Discussion

##### Summary

Infrastructure as code (IaC) is a helpful technology that enables infrastructure to be delivered via code. One of the most mature IaC tools is Terraform. Terraform is vendor-agnostic, which makes it more flexible than tools like AWS CloudFormation or GCP Deployment Manager. Additionally, Terraform provides various provisioners that enable system configuration during deployment (Hafner, 2025). For instance, the remote-exec allows running remote bash or shell scripts, and the file provisioner can create or upload files to servers. The different Terraform providers have capabilities similar to Ansible for configuring servers, but Ansible has package galaxies with integrations with third-party products such as firewalls, web servers, and more (Madapparambath, 2022). Also, IaC allows for standard configurations, which Terraform helps with by allowing users to define variables that can be used during deployment. Standard configurations reduce error-prone configurations and inconsistent setups, and the reuse of the variables helps maintain a single standard for deployments. Finally, IaC tools like Terraform allow for change auditability when used in conjunction with code repositories like Git. Making it easy to identify when changes were added and to roll back to the known point of work (Wang, 2024). In conclusion, Terraform is an IaC tool that enables the complete deployment and configuration of systems across different cloud environments, avoiding vendor lock-in, making it the superior tool for designing and deploying in the cloud.


##### Peer Response
Hello Joshua,

Your post is really insightful about the advantages of using Ansible for configuration management and automation in multi-cloud environments. Ansible is better than other tools for maintaining a baseline and automating configuration tasks or deployments across resources. Still, this is not a complete cloud design; you are defining the configuration of deployed resources, and for this to be a design, it should be able to deploy the necessary services and dependencies on the cloud. For this, we could explore some of the Ansible Galaxy collections, such as google.cloud (Google Cloud, 2024) or amazon.AWS (Amazon Web Services, 2024) collections, which allow the deployment of cloud resources defined in an Ansible-supported YAML. The Ansible Galaxy collections enable Ansible to begin capturing the architectural requirements for a robust cloud design. 
Even with the mentioned above, Terraform is still a better tool for cloud design because it uses an easy-to-read language and supports more services than Ansible when integrating with public cloud and private clouds (Wang, 2024). Additionally, the Terraform community has many tested examples of standard configurations. For instance, Fortinet provides Terraform deployment files for a high-availability FortiGate deployment (fortinetdev, 2024).


#### Reflexion
+ Cloud design tools are important for deploying services in a standardized, repeatable way. But it is critical to choose the right tool for the job while considering business requirements. Ansible is not a good fit because its infrastructure declarations are less readable than Terraform or AWS CloudFormation. 

---

#### Reading 

+ Amazon Web Services (AWS) (2024) Ansible Galaxy - amazon.aws. Available at: https://galaxy.ansible.com/ui/repo/published/amazon/aws/ (Accessed: 14 February 2026).
+ Feitosa, D. et al. (2024) Mining for cost awareness in the infrastructure as code artifacts of cloud-based applications: An exploratory study. Journal of Systems and Software. [Online] 215.
+ fortinetdev (2024) GitHub - fortinetdev/terraform-azurerm-cloud-modules. Available at: https://github.com/fortinetdev/terraform-azurerm-cloud-modules/tree/main (Accessed: 14 February 2026).
+ Google Cloud (2024) Ansible Galaxy - google.cloud. Available at: https://galaxy.ansible.com/ui/repo/published/google/cloud/docs/ (Accessed: 14 February 2026).
+  Hafner, R. (2025) Terraform in Depth : Infrastructure As Code with Terraform and OpenTofu. 1st ed. New York: Manning Publications Co. LLC.
+ Madapparambath, G. (2022) Ansible for real-life automation : a complete ansible handbook filled with practical IT automation use cases. 1st ed. Birmingham, England: Packt Publishing Ltd.
+ Pushkar Joglekar & Nigel Poulton (2025) The Kubernetes Book - Third Edition. Packt Publishing.
+ Wang, I. (2024) Terraform Made Easy : Provisioning, Managing and Automating Cloud Infrastructure with Terraform on Google Cloud. 1st ed. 2024. [Online]. Berkeley, CA: Apress.