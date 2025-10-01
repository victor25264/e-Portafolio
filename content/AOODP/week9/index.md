---
title: "Object-Oriented Software Architecture" 
date: 2025-09-28
tags: ["AOODP","OOP","Software Architecture"]
author: ["Victor"]
description: "Software architecture organizes system components. It provides a blueprint for system desing to ensure modularity, reusability, and security." 
summary: "Software architecture organizes system components. It provides a blueprint for system desing to ensure modularity, reusability, and security." 
cover:
    # image: "paper1.png"
    alt: "Object-Oriented Software Architecture"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---
#### Object-Oriented Software Architecture

##### Monolithic application
+ Single code based on shared memory space, and usually with a simpler deployment
+ Takes a more extended time to release and requires intensive pre-planning and coordination among teams
+ Its main advantages are: simplicity, short time to market, and build first to optimize later
+ Its main drawbacks are: slow development, difficult to scale and tune performance, total system failure, technology lock-in, and time-consuming test suite

##### Layered architecture
+ Divides the system into logical layers: presentation, business, data
+ Separates concerns, has a strict hierarchy, and is easy to maintain

##### Microservices
+ Decouples the system into independent, loosely coupled services (single responsibility principle)
+ It is recommended that: each microservice is developed by one team, microservices shouldn’t communicate too often with each other to complete their features
+ Microservices communicate with each other using well-defined APIs, using HTTP/s, RPC, SOAP, or others
+ Miroservices are resilient, scalable, maintainable, and can have higher code and test quality
+ Its main drawbacks are: increased complexity, network latency and overhead, distributed data management, and others

##### Serverless
+ User of cloud functions for ephemeral executions
+ Its main advantages are: scalability, cost efficiency, time to market, adaptability, and migration.
+ There are several key considerations when utilizing serverless computing, including cold start, vendor lock-in, state management, cost management, and monitoring and debugging.


##### Event-Driven architecture
+ Components communicate via events, normally in real time
+ Uses publishers that send events to subscribers without knowledge of their specific destinations
+ Its main advantages: loose coupling between microservices, scalability, fault tolerance, and eventual consistency
+ Its primary challenges: dropped messages, duplicated messages, unordered messages, and broker downtime.

---

#### Reflexion
+ Software architecture is advantageous because it provides a blueprint of how a system and its components will interact. This has several advantages that will help the development team gain a better understanding of how things should be implemented. There is a need to design the software to have scalable and resilient systems. Still, due to the time-to-market, monolithic applications are helpful and can be used to later transition to other architectures, such as microservices or event-driven architecture, depending on the system's needs.

---

#### Reading 

+ Chow, J. (2024) Software Architecture with Kotlin : Combine Various Architectural Styles to Create Sustainable and Scalable Software Solutions. First edition. Birmingham, England: Packt Publishing.
+ Macero García, M. & Telang, T. (2023) Learn Microservices with Spring Boot 3 : A Practical Approach Using Event-Driven Architecture, Cloud-Native Patterns, and Containerization. 3rd ed. 2023. [Online]. Berkeley, CA: Apress.

