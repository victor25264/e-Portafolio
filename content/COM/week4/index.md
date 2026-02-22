---
title: "Cloud Native Technology Part 1" 
date: 2026-02-17
tags: ["Development", "OpenStack"]
author: ["Victor"]
description: "Cloud native technologies are designed from the start to leverage the scalability and agility of cloud services." 
summary: "Cloud native technologies are designed from the start to leverage the scalability and agility of cloud services." 
cover:
    # image: "paper1.png"
    alt: ""
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Cloud Native Technology Part 1

##### The Twelve-Factor App
+ Methodology for building software-as-a-service apps that:
  + Use declarative format for setup automation
  + clean contract with underlying OS, offers maximum portability
  + suitable for cloud deployment
  + minimize divergence between production, development, and other environments
  + scale up without significant changes in tooling, architecture, or development practices
1. Codebase:
  + always tracked in a version control system like Git
  + codebase is a single repo, or any set of repos with the same root commit
  + multiple codebases are not an app; it's a distributed system
  + apps do not have to share code; libraries should be used through a dependency manager
  + a deploy is a running instance of the app
2. Dependecies:
  + do not rely on the implicit existence of a system-wide package, use a dependency declaration manifest
  + use dependency isolation tool to ensure no implicit dependency leak
  + simplifies setup for developers new to the project
3. Config:
  + app's config is everything likely to vary between deploys
  + config store as constants in code is a violation of the methodology
  + config does not include internal application
  + store config in environmental variables and do not upload to the repository
4. Backing services
  + is any service that the app consumer accesses over the network for operation
  + do not make a distinction between local and third-party services
  + should be able to swap services without changes to the code
  + services can be attached and detached from deploys
5. Build, release, run
  + codebase becomes a deploy by: build it into an executable, release combines code with config, and run the app in the execution environment
  + use strict separation between the stages
6. Processes
  + app is executed in the execution environment as one or more processes
  + processes are stateless and share-nothing, data persist on backing services
  + apps must not assume anything is cached in memory or on disk
  + sticky sessions are a violation of the methodology; use external services if needed
7. Port binding
  + app is completely self-contained and does not rely on runtime injection
  + note that port-binding means that the app can become a backing service
8. Concurrency
  + processes are first-class citizens
  + assign workload to different process types
  + the share-nothing, means that adding more concurrency is a reliable operation
9. Disposability
  + apps can be started or stopped at a moment's notice for rapid deployment or config change
  + should strive to minimize startup time, increase agility for release
  + apps should shut down gracefully by finishing the activities
  + process should be robust against sudden death
10. Dev/prod parity
  + apps are designed for continuous deployment by keeping the gap between dev and prod
  + resist the urge to use different backing services between environments, as this difference can sum multiple tiny incomtibilities
11. Logs
  + logs are a stream of aggregated, time-ordered events collected from the processes running
  + apps should never concern themselves with routing or storage of the logs
  + the environment manages routing by using log routes
12. Admin processes
  + admin processes should be run in an identical environment as the regular long-running processes of the app
  + the same dependency isolation techniques should be used on all process types
  + strongly favors languages that provide a REPL shell out of the box, and which make it easy to run one-off scripts

---

#### Formative Activity

##### Explanation

Infrastructure scalability is a critical concern for cloud computing to enable on-demand service and rapid elasticity. Automation is a key part of this process, providing the infrastructure and services needed in a standardized, error-free way (Luchian et al., 2016). In the presented script, provisioning a virtual machine instance on OpenStack is automated by creating all the necessary dependencies, such as networks, storage, and images. The script uses two external environment files: one for the credentials needed to use the OpenStack server, and one to define the VM name and variables needed to deploy the VM. By using external variables for deployment, the deployment logic does not change; only the variables do, which makes this a repeatable process that reduces configuration errors.
Additionally, the code can grow by creating new libraries or functions that provide standard functionality usable in other deployments (Doolittle & Blumen, 2022). Still, there are some risks when automating or using IaC, for instance, vulnerabilities can be introduced when developers are not specialized in these frameworks. Additionally, it is important to proactively identify these vulnerabilities before deployment using tools such as Synk or Horusec (War et al., 2025). For instance, in the presented script, port 22 is open, which could pose a risk if the instance were exposed to the internet. This can be critical if used with a weak credential, which could end up in a system compromise. 
In conclusion, automation of cloud deployment has critical advantages that enable scalability and elasticity. Both critical characteristics of cloud computing enable businesses to grow and optimize resources. Still, there is a need for security considerations to ensure systems are correctly deployed without introducing vulnerabilities to the infrastructure.

##### Download

+ [Script](openstack-script.bash)




##### Reflexion
+ Cloud native technologies have a design that takes advantage of cloud providers. This advantage is key to having scalable and resilient applications. Still, this takes time or money to have it correctly deployed, which can be a barrier to entry for small companies. 




---

#### Reading 

+ Doolittle, J. & Blumen, R. (2022) Luke Hoban on Infrastructure as Code Robert Blumen (ed.). IEEE software. [Online] 39 (2), 112–114.
+ Luchian, E. et al. (2016) 'Automation of the infrastructure and services for an openstack deployment using chef tool', 2016 15th RoEduNet Conference: Networking in Education and Research. IEEE, pp. 1-5.
+ War, A. et al. (2025) Vulnerabilities in infrastructure as code: what, how many, and who? Empirical software engineering : an international journal. [Online] 30 (5), .
