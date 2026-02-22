---
title: "Introduction to Cloud Fundamentals and Services" 
date: 2026-01-27
tags: ["cloud","cloud services","cloud computing"]
author: ["Victor"]
description: "Cloud service providers sell multiple services using different models." 
summary: "Cloud service providers sell multiple services using different models." 
cover:
    # image: "paper1.png"
    alt: "Introduction to Cloud Fundamentals and Services"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Introduction to cloud computing
+ Definition
  + NIST (Mell and Grance, 2011): On-demand self-service, Broad network access, Broad network access, Rapid elasticity, Measured service.
+ Models:
  + Private Cloud: Exclusive for a single organization
  + Community Cloud: Provision for the use of a specific community that shares similar concerns
  + Public Cloud: Provisioned for general use by the general public
  + Hybrid Cloud: A composition of two or more models
+ Services:
  + Compute: VM, containers, serverless (FaaS)
  + Storage: block storage, file storage, object storage
  + Network: VPCs, VPN, Subnetting, load balancing, CDNs
+ Security and compliance:
  + Risks: data breaches, insider threats, data loss and recovery, insecure API, DoS attacks
  + tools: IAM, encryption and data protection, firewalls, IPS/IDS

##### Cloud Service Model
+ IaaS: provides storage, networks and other computing resources where the customer can run software, including operating system and application
+ PaaS: provides the ability to deploy applications created with libraries, services, and tools supported by the provides
+ SaaS: provides an application running on the cloud infrastructure


##### Benefits and Challenges
+ Advantages:
  + Scalability
  + Cost saving by eliminating upfront investments
  + High reliability and availability
  + Security on different layers
  + Remote access and collaboration
  + Automation
+ Challenges:
  + Data protection
  + Vendor lock-in
  + Managing costs

---

#### Collaborative Discussion

##### Initial Post

Different cloud service providers (CSPs) in the current market offer similar services. For instance, Amazon Web Services (AWS) Elastic Compute Cloud (EC2), Azure virtual machines, and Google Compute Engine are all examples of infrastructure as a service. But, they all have essential differences. In the case of AWS, EC2 instances are more reliable and exhibit more predictable performance than those of other providers, but at a higher cost (Ahuja, 2025). Still, this can be challenged when comparing adding Oracle Cloud Infrastructure to the pool of providers and when considering differences in CPU architecture, such as Intel vs AMD and ARM. Oracle cloud infrastructure has been shown to offer the best performance per dollar across AMD and ARM CPUs (Tharwani & Purkayastha, 2024; Zboril & Svatá, 2025). Another popular service is Function as a Service, where all providers show consistent execution times but longer trigger durations than the others (Blend & Selimi Besnik, 2025). But some authors found that Alibaba Cloud has the best performance and predictability for function-as-a-service execution (de Carvalho et al., 2024).

Additionally, with the rise of AI, these platforms are offering a range of products for use and model training. AWS SageMaker shows better features for machine learning (Choi et al., 2023). On the other hand, GCP has the best models to distinguish real faces from fake ones. Azure offers the most generous free monthly audio transcription quota (Wang et al., 2024).  

As presented, different providers are best for different services, so it is possible to use multiple providers and leverage the main advantages of each cloud. The NOAA Open Data Dissemination project uses Azure, GCP, and AWS to distribute and process various data. Other authors have shown that projects like BLAST sequence do not depend on specific CSPs but on organizational knowledge and framework requirements (Alvarez et al. 2021). Additionally, factors such as security, cost, brand familiarity, and integration play a crucial role in choosing a CSP.

In summary, CSPs offer similar services but differ in efficiency, integration, and other areas. To choose the best CSP for the project, consider CSP technical factors, as well as organizational factors such as knowledge of the platform and related factors.

#### Reflexion

+ Cloud computing has opened multiple opportunities for businesses, being one of the main choices for startups to deploy new services. Still, this complex system poses many challenges that need to be addressed. The main one to me is the number of features that are not transparent and affect users' data; for instance, the ability to allow or disallow users' OAUTH authentication to unapproved applications.


---

#### Reading 

+ Afzal, S. & Kavitha, G. (2019) Load balancing in cloud computing – A hierarchical taxonomical classification. Journal of cloud computing : advances, systems and applications. [Online] 8 (1), .
+ Alvarez, R. V. et al. (2021) Transcriptome annotation in the cloud: complexity, best practices, and cost. Gigascience. [Online] 10 (2), .
+ Ahuja, S. et al. (2025) Performance Variability in Public Clouds: An Empirical Assessment. Information (Basel). [Online] 16 (5), .
+ Blend, H. & Selimi Besnik (2025) Measuring Function-as-a-Service Performance in Different Cloud Platforms using an Application-Level Benchmark. SEEU review. [Online] 20 (2), 100–110.
+ Borra, P. (2024) An overview of cloud data warehouses: Amazon Redshift (AWS), Azure Synapse (Azure), and Google BigQuery (GCP). International journal of advanced research in computer science. [Online] 15 (3), 23–27.
+ Choi, W. et al. (2023) A Comparative Study of Automated Machine Learning Platforms for Exercise Anthropometry-Based Typology Analysis: Performance Evaluation of AWS SageMaker, GCP VertexAI, and MS Azure. Bioengineering (Basel). [Online] 10 (8), .
+ de Carvalho, L. R. et al. (2024) Main FaaS Providers Behavior Under High Concurrency: An Evaluation with Orama Framework Distributed Architecture. SN computer science. [Online] 5 (5), .
+ Gupta, D. & Rahi, R. (2023) The Cloud Computing Journey : Design and Deploy Resilient and Secure Multi-Cloud Systems with Practical Guidance. First edition. Birmingham, England: Packt Publishing Ltd.
+ Kamal, M. A. et al. (2020) Highlight the Features of AWS, GCP and Microsoft Azure that Have an Impact when Choosing a Cloud Service Provider. International journal of recent technology and engineering. [Online] 8 (5), 4124–4132.
+ Mell, P. and Grance, T. (2011) The NIST Definition of Cloud Computing. Recommendations of the National Institute of Standards and Technology (Special Publication 800-145). Gaithersburg: National Institute of Standards and Technology. Available at: https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-145.pdf (Accessed: 7 February 2026).
+ Tharwani, J. & Purkayastha, A. A. (2024) Cost-Performance Evaluation of General Compute Instances: AWS, Azure, GCP, and OCI. arXiv.org.
+ Wang, X. (Shane) et al. (2024) Beyond text: Marketing strategy in a world turned upside down. Journal of the Academy of Marketing Science. [Online] 52 (4), 939–954.
+ Willett, D. S. et al. (2023) NOAA Open Data Dissemination: Petabyte-scale Earth system data in the cloud. Science advances. [Online] 9 (38), eadh0032.
+ Zboril, M. & Svatá, V. (2025) Performance comparison of cloud virtual machines. Journal of systems and information technology. [Online] 27 (2), 197–213.