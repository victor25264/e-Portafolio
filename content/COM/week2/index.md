---
title: "Understanding Cloud Architecture and Implementing Different Frameworks" 
date: 2026-02-03
tags: ["cloud architecture", "TOGAF", "SDL", "IaC"]
author: ["Victor"]
description: "Understanding Cloud Architecture and Implementing Different Frameworks" 
summary: "Cloud architecture is an important step in designing solutions that can take advantage of the cloud and adapt to business objectives." 
cover:
    # image: "paper1.png"
    alt: ""
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Overview of cloud architecture
+ There are multiple definitions of architecture depending on the standard or framework
+ TOGAF defines it as: "The fundamental concepts or properties of an entity in its environment and governing principles for the realization and evolution of this entity and its related lifecycle processes" (The Open Group, 2022)
+ Also added the following definition from: "The structure of components, their interrelationships, and the principles and guidelines governing their design and evolution over time" (ISO, 2022)

##### Introduction to TOGAF, SDLC, and IaC
+ TOGAF: is a modular standard to develop enterprise architecture.
+ Software Development Life Cycle (SDLC): a methodology for systematically developing software. Provides well-defined stages.
+ Infrastructure as code (IaC): managing and provisioning infrastructure through machine-readable scripts.


##### Microservices enterprise architecture  (Abd-Elwahab, 2023)
+ Microservices can enable digital transformation, supporting standards and aligning to cloud strategy
+ Microservices enable:
  + Design decouple services and define API contracts
  + Establish best practices and standards
  + Support Development from design to implementation
  + Aligning with cloud strategy
  + Enable data integration
+ Process for implementation
  + Identify business objectives
  + Design the microservices architecture
  + Develop the microservices
  + Implement service discovery and API gateway
  + Implement monitoring and logging
  + Test microservices
  + Iterate and refine
+ Challenges:
  + Resistance to change
  + Lack of skill and expertise
  + Complex legacy systems
  + Unclear objectives
  + Budget constraints
  + Data management
+ Strategies for integrating new systems with legacy:
  + Develop a comprehensive integration strategy
  + Implement middleware
  + Use APIs
  + Adopt a phased approach
  + Leverage microservices architecture
  + Implement a data integration platform
  + Use data mapping and transformation tools

---

#### Collaborative Discussion

##### Initial Post
This paper explores two critical frameworks, TOGAF and the Roadmap for Cloud Computing Adoption (ROCCA), and maps ROCCA steps to TOGAF processes (Anggraini et al., 2019). TOGAF is a standard, set of techniques, and best practices for developing enterprise architecture. The ROCCA model used different phases like analysis, planning, adoption, migration, and management to address strategic issues at each stage of the project (Shimba, 2010). This paper is a good example of how TOGAF can be used in different situations, particularly in the adoption of cloud computing. This is a great start, but as shown in the mapping, some TOGAF processes are grouped within the same ROCCA phase, which can oversimplify the information needed to create a good architecture. Still, this is one of TOGAF's strengths: it can be adopted partially and has an overall positive impact on the business.



#### Reflexion
+ Cloud architecture is critical for defining requirements and a strategy for migrating or developing services or infrastructure. Planning is critical at this stage to establish a clear goal and steps to follow to complete the project. Still, this step takes time and requires cloud expertise to correctly identify the necessary business requirements while maintaining the specification within budget. If the architect lacks an understanding of the chosen cloud, the project will face many setbacks that could have been avoided with proper planning.

---

#### Reading 

+ Abd-Elwahab, A. M. (2023) MicroServices-driven enterprise architecture model for infrastructure optimization. Future business journal. 9.
+ Anggraini, N. et al. (2019) Cloud Computing Adoption Strategic Planning Using ROCCA and TOGAF 9.2: A Study in Government Agency. Procedia computer science. [Online] 1611316–1324.
+ International Organization for Standardization (ISO) (2022) ISO/IEC/IEEE 42010:2022 Software, systems and enterprise — Architecture description. Available at: https://www.iso.org/standard/74393.html (Accessed: 15 February 2026).
+ Jager, E. (2025) Mastering the TOGAF® Standard : A Practical Translation of the World’s Leading Architecture Framework. 1st ed. 2025. [Online]. Berkeley, CA: Apress.
+ Shimba, F. (2010) Cloud computing: Strategies for cloud computing adoption. MSc Dissertation. Technological University Dublin. Available at: https://arrow.tudublin.ie/scschcomdis/29/ (Accessed: 8 February 2026).
+ The Open Group (2022) The TOGAF® standard: leader’s guide. 10th edn. ’s-Hertogenbosch: Van Haren Publishing.