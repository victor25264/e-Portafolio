---
title: "Risk, Business Continuity and Disaster Recovery" 
date: 2025-12-20
tags: ["risk","uncertain","risk management process"]
author: ["Victor"]
description: "Business continuity (BC) and disaster recovery (DR) are linked being DR a subset of BC" 
summary: "Business continuity (BC) and disaster recovery (DR) are linked being DR a subset of BC" 
cover:
    # image: "paper1.png"
    alt: "Risk, Business Continuity and Disaster Recovery"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Risk, Business Continuity and Disaster Recovery
+ Business continuity (BC) and disaster recovery (DR) are linked being DR a subset of BC 
+ BC is not security driven like the case of Covid 19 but it will dictate security requirements

##### Business Continuity (BC)

+ Standard ISO 22301 recomends: 
  + undergo a risk assesment
  + undergo a business impact analysis
  + select a BC strategy
  + create and implement policy and procedure
  + perform regular tests to ensure strategy is appropiate
  + ensure plans operate as expected
+ Mostly concern with allowing a vusiness to continue to run even in the event of a mayor disaster or incident
+ It should output a formal, documented business continuity plan but it should be simple to follow and implement

##### Disaster Recovery (DR)
+ More concern with ensuring that IT infrastructure is available when BC is invoke
+ Two main factors:
  + the recovery time objective (RTO): time to recover
  + the recovery poimy objective (RPO): how much data can be lost
+ In general solutions that reduce RTO or RPO are more expensive
+ Digital transformation maturity:
  + Business as usual: no recognized need for digitalization
  + Present and active: recognized need for digitalization
  + Formalized: experimentation of new technologies
  + Strategic: buyin for new technologies
  + Converged: team of innovator to guide transformation
  + Innovative and adapted: digitalization and innovation is part of the business

##### Cloud and suppliers
+ Organization have decided to use cloud for many reasons:
  + cost (depending on the application)
  + availability
  + composability
  + scalability
  + security
+ Suppliers play a important role for this desitions
  + Single suppliers: lower cost, easy deployment and management but data lockin and design lock-in
  + Multi supplier: more resilient but complex design, more expensive and harder to find tools.
+ Share reponsability model:
  + depending on the type of service some responsabilities the costumer will manage

---

#### Colaborative Discussion

##### Summary Post

As many of my colleagues noted, the Common Vulnerability Scoring System (CVSS) is not a risk-prioritization score. Yet, many frameworks, such as PCI-DSS (PCI Security Standards Council, 2024), still use it for this purpose. This causes resources not to be used to reduce problems with higher overall risk, but rather to focus on those with higher severity, as determined by the obtained CVSS score. To better prioritize vulnerabilities or risks, there are frameworks such as the Stakeholder-Specific Vulnerability Categorization (SSVC) that consider multiple factors, including exploitation, impact, asset criticality, and exposure, to better prioritize risks (Spring et al., 2021). This method is more effective for prioritizing risks and vulnerabilities, but it requires more information than a less mature organization may have. For instance, there are organizations that do not have an accurate inventory of assets and their exposure. 

For this reason, Amnon's approach can serve as a middle ground for many organizations that are beginning to prioritize vulnerabilities. He suggested using CVSS and the Exploit Prediction Scoring System (EPSS) to prioritize vulnerabilities. While CVSS scores a vulnerability potential severity, EPSS shows which vulnerabilites are more likely to being exploited in the wild (Jacobs et al., 2023). This approach does not require an organizational context, and the results will help prioritize vulnerabilities with the highest severity and likelihood of exploitation. Still, this lack of context can be dangerous if the organization has numerous systems with different functionalities.  



#### Reflexion
+ Business continuity is a critical document that companies that want to grow need to develop. Still, as shown by various authors (Popov et al., 2022; Srivastava, 2024), implementing BI involves distinct phases that require information to identify the necessary infrastructure or tools. This process ensures that the decision for BC will meet business requirements. One of these phases is the risk assessment, which identifies the areas where the business needs to prepare. Yet, a human factor needs to be considered more, as many directives' bonuses are based on performance, which has been shown to lead to riskier decisions (Clark, 2014).


---

#### Reading 

+ Andrade, E. et al. (2017) Availability modeling and analysis of a disaster-recovery-as-a-service solution. Computing. [Online] 99 (10), 929–954.
+ Clark, R. A. (2014) In hindsight : a compendium of business continuity case studies. 1st edition. Cambridgeshire, 
+ Jacobs, J. et al. (2023) Enhancing Vulnerability Prioritization: Data-Driven Exploit Predictions with Community-Driven Insights. arXiv.org.
+ FIRST (2024) CVSS v4.0 specification document, Common Vulnerability Scoring System Version 4.0. Available at: https://www.first.org/cvss/v4-0/specification-document (Accessed: 07 December 2025). 
+ Spring, J.  et al. (2021) Prioritizing vulnerability response: A stakeholder-specific vulnerability categorization (version 2.0), SEI Digital Library. Available at: https://www.sei.cmu.edu/library/prioritizing-vulnerability-response-a-stakeholder-specific-vulnerability-categorization-version-20/ (Accessed: 08 December 2025). 
+ PCI Security Standards Council. (2024) Payment Card Industry Data Security Standard (PCI DSS) - Version 4.0.1. [Online]. Available at: https://docs-prv.pcisecuritystandards.org/PCI%20DSS/Standard/PCI-DSS-v4_0_1.pdf (Accessed: 13 December 2025).
+ Popov, G. et al. (2022) Risk assessment : a practical guide to assessing operational risks. Second edition. Hoboken, New Jersey: Wiley.
+ Srivastava, K. (2024) Business continuity management : significant insights from practice. [Online]. New York: Routledge.
+ Wunder, J. et al. (2024) ‘Shedding Light on CVSS Scoring Inconsistencies: A User-Centric Study on Evaluating Widespread Security Vulnerabilities’, in Proceedings - IEEE Symposium on Security and Privacy. [Online]. 2024 IEEE. pp. 1102–1121.
