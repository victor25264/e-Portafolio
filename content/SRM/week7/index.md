---
title: "An Introduction to the Concepts of Quantitative Risk Modelling" 
date: 2025-12-06
tags: ["risk","uncertain","quantitative risk modelling"]
author: ["Victor"]
description: "" 
summary: "" 
cover:
    # image: "paper1.png"
    alt: "An Introduction to the Concepts of Quantitative Risk Modelling"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### An Introduction to the Concepts of Quantitative Risk Modelling
+ Some risk experts and consultants argue that quantitative approaches are more accurate and better than qualitative ones

##### Quantitative Risk Model
+ Monte Carlo Simulation:
  + Based on the law of large numbers. 
  + Principles: probability distribution, speed of numbers, and a known number generator
  + Antipatterns: consider the tools used, sampling method has impact, non-standard distributions do not work well 
+ Bayes' Theorem:
  + Statistical theory of conditional probabilities
  + Principles: subjective probabilities, hypotheses can affect outputs
  + Antipatterns: ambiguity, ignorance, people prefer known or calculable risk
+ Multiple Criteria Decision Analysis
  + Principles: Select the type of decision that is required, and choose which possible techniques you prefer to use
  + Antipatterns: incorrect selection can result in erroneous output, rank reversal, and the accuracy of some methods
  + AHP can be worse than generic MCDM and should be used with care (Asadabadi et al. 2019)

---

#### Colaborative Discussion

##### Initial Post

The authors criticize the consistency of the results, the suitability for security deficiencies, and the lack of a default version for CVSS (Wunder, et al. 2024). I agree with the criticism, as it is challenging to obtain a consistent CVSS score initially due to limited information. Even people who have been working with it for long periods need additional information from vendors, but obtaining it cannot be easy. But reputable vulnerability databases are trustworthy and relatively consistent (Johnson, et al. 2018). Also, the security deficiencies are vulnerabilities as defined by the CVSS, which encompasses weaknesses and flaws in information systems. This shows a lack of understanding of the CVSS objective or key definitions in the CVSS specification (FIRST, 2024). Aditionally, FIRST post the current CVSS version that is, at the time of writing, CVSS 4.0. Finally, I do not consider that any of the presented alternatives could replace CVSS as CVSS is not a risk prioritization score is a severity score, at least in the base score the authors are using. When using CVSS in a mature vulnerability or risk management program, the severity score is one input that helps prioritizaise the different risk and is not the only factor as this is a missuse of the score (Spring, et al. 2021). 




#### Reflexion
+ The phrase "If you wish to converse with me, define your terms" from Voltaire is critical for risk management. Given how CVSS is misused and misinterpreted, it is essential to understand when and how to use it correctly. This is critical, as some frameworks recommend using CVSS to prioritize vulnerabilities, which leads to the misuse of resources to reduce the real risk. On the other hand, qualitative methods show greater benefits in correctly prioritizing vulnerabilities; for instance, the Rapid7 tool for risk prioritization. This score uses CVSS and real-time and predictive threat intelligence, enabling improved risk prioritization. 

---

#### Reading 

+ Asadabadi, M. R. et al. (2019) Are MCDM methods useful? A critical review of Analytic Hierarchy Process (AHP) and Analytic Network Process (ANP). Cogent engineering. [Online] 6 (1), .
+ Johnson, P. et al. (2018) Can the Common Vulnerability Scoring System be Trusted? A Bayesian Analysis. IEEE transactions on dependable and secure computing. [Online] 15 (6), .
+ Fraser, J. & Simkins, B. J. (2010) Enterprise risk management. 1st edition. Hoboken, New Jersey: Wiley.
+ Metropolis (1987) The Beginning of the Monte Carlo Method. Los Alamos science /. 125–130.
+ FIRST (2024) CVSS v4.0 specification document, Common Vulnerability Scoring System Version 4.0. Available at: https://www.first.org/cvss/v4-0/specification-document (Accessed: 07 December 2025). 
+ Spring, J.  et al. (2021) Prioritizing vulnerability response: A stakeholder-specific vulnerability categorization (version 2.0), SEI Digital Library. Available at: https://www.sei.cmu.edu/library/prioritizing-vulnerability-response-a-stakeholder-specific-vulnerability-categorization-version-20/ (Accessed: 08 December 2025). 
+ Wunder, J. et al. (2024) ‘Shedding Light on CVSS Scoring Inconsistencies: A User-Centric Study on Evaluating Widespread Security Vulnerabilities’, in Proceedings - IEEE Symposium on Security and Privacy. [Online]. 2024 IEEE. pp. 1102–1121.