---
title: "Implementing Quantitative Risk Models" 
date: 2025-12-13
tags: ["risk","uncertain","quantitative risk"]
author: ["Victor"]
description: "Monte Carlo methods can calculate the estimated probability of the occurrence of an event" 
summary: "Monte Carlo methods can calculate the estimated probability of the occurrence of an event" 
cover:
    # image: "paper1.png"
    alt: "Implementing Quantitative Risk Models"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Implementing Quantitative Risk Models
+ There are multiple tools for performing quantitative risk analysis using the Monte Carlo method
+ These tools can be complicated to use and require students to buy a license
+ There are free tools, but the code is not available to understand or expand on those

##### Real-world usage
+ Monte Carlo methods can calculate the estimated probability of the occurrence of an event
+ Monte Carlo simulation can be utilized in different fields like economics, gambling, and others

---

#### Colaborative Discussion

##### Peer Response

Interesting post, Amnon,

I agree with your assessment of CVSS having a different purpose: to describe and assign a severity score to a vulnerability (FIRST, 2024). I consider your proposal to use the Exploit Prediction Scoring System (EPSS) and CVSS to be a solid improvement over using CVSS alone. However, there is still a critical context needed for a mature risk prioritization (Hughes and Robinson, 2024). For instance, asset exposure and value are crucial pieces of information for allocating resources effectively to manage risk. Without this, we could end up solving vulnerabilities that are likely to be exploited and cause damage, but the systems were not public-facing. And miss vulnerabilities that were likely to be exploited but of medium severity on internet-exposed servers. 

I consider that a good start to prioritizing vulnerabilities to improve security and reduce risk requires multiple information sources, such as vulnerability, asset, and business information. Still, this proposal will have some limitations, as the priorities will depend on the framework or regulations. I consider Stakeholder-Specific Vulnerability Categorization a reasonable solution for many businesses, as it provides a straightforward decision tree for patch suppliers and deployers (Spring et al., 2021). But it requires more information, which can be a stopper depending on the organization's maturity.

##### Peer Response

Hi Amnon,


To ensure consistent results, organizations must follow the guidelines set by the developers of the frameworks and other experienced practitioners. CVSS versions 3, 3.1, and 4 each have specification documents, user guides, and examples that explain in more detail what the different metrics mean and how to use them to characterize a vulnerability. For instance, the confusion around the attack vector can be resolved by reading the specification that defines network, adjacent, local, and physical in more detail, with examples (FIRST, 2024). To ensure consistent results in most cases, it is necessary to standardize procedures. The authors asked whether participants read the specification; around 30% did not read the documentation, and 20% did read it, but it was outdated (Wunder et al., 2024). This shows that almost 50% of survey participants lack an understanding of what CVSS is and how to use it, which may explain the inconsistent results, as other studies have shown that CVSS databases are consistent and can be trusted (Johnson et al., 2018).

In summary, to achieve consistent and accurate results, standard documentation and procedures should be followed.

---

#### Reflexion
+ Monte Carlo methods provide a way to simulate scenarios to understand events. Still, there is a critical need to have reliable data to make these simulations as accurate as possible. As mentioned at the start, this requires that the organization has the necessary information, which is not feasible for less mature organizations. Additionally, understanding how to perform the simulations and the variables needed correctly will require subject matter experts. 


---

#### Reading 

+ Aijaz, M. & Nazir, M. (2024) Modelling and analysis of social engineering threats using the attack tree and the Markov model. International journal of information technology : an official journal of Bharati Vidyapeeth’s Institute of Computer Applications and Management. [Online] 16 (2), 1231–1238.
+ Eckstein, J. & Riedmueller, S. T. (2002) YASAI: Yet Another Add-in for Teaching Elementary Monte Carlo Simulation in Excel. Transactions on education /. [Online] 2 (2), 12–26.
+ Hughes, C. & Robinson, N. (2024) Effective Vulnerability Management : Managing Risk in the Vulnerable Digital Ecosystem. 1st ed. Newark: John Wiley & Sons, Incorporated.
+ Johnson, P. et al. (2018) Can the Common Vulnerability Scoring System be Trusted? A Bayesian Analysis. IEEE transactions on dependable and secure computing. [Online] 15 (6), .
+ Fraser, J. & Simkins, B. J. (2010) Enterprise risk management. 1st edition. Hoboken, New Jersey: Wiley.
+ FIRST (2024) CVSS v4.0 specification document, Common Vulnerability Scoring System Version 4.0. Available at: https://www.first.org/cvss/v4-0/specification-document (Accessed: 07 December 2025). 
+ Spring, J.  et al. (2021) Prioritizing vulnerability response: A stakeholder-specific vulnerability categorization (version 2.0), SEI Digital Library. Available at: https://www.sei.cmu.edu/library/prioritizing-vulnerability-response-a-stakeholder-specific-vulnerability-categorization-version-20/ (Accessed: 08 December 2025). 
+ Wunder, J. et al. (2024) ‘Shedding Light on CVSS Scoring Inconsistencies: A User-Centric Study on Evaluating Widespread Security Vulnerabilities’, in Proceedings - IEEE Symposium on Security and Privacy. [Online]. 2024 IEEE. pp. 1102–1121.
+ Zografopoulos, I. et al. (2021) Cyber-Physical Energy Systems Security: Threat Modeling, Risk Assessment, Resources, Metrics, and Case Studies. IEEE access : practical innovations, open solutions. [Online] 929775–29818.
