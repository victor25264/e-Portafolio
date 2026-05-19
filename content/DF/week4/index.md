---
title: "Cyber Harms and Digital Rights" 
date: 2026-05-23
tags: ["digital forensic", "GDPR"]
author: ["Victor"]
description: "There is an ongoing debate regarding the correct use of technology to protect individuals, as certain measures could compromise privacy and trust." 
summary: "There is an ongoing debate regarding the correct use of technology to protect individuals, as certain measures could compromise privacy and trust." 
cover:
    # image: "paper1.png"
    alt: "Cyber Harms and Digital Rights"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Cyber Harms and Digital Rights

##### Verifying User and Host Identity
+ Authentication
  + it is no longer as simple as employing a username and password
  + validations can vary based on the types of systems you are accessing
  + Additional authentication techniques
    + Security questionnaires: personal question information
    + Two- or multiple-factor authentication
    + Secure encryption: when you enter your username, password, or other validation data 
  + Password Rule Hardening: Practices
    +  8–25 characters that require at least one capital letter, one unique character, (!, $, etc.), and one numeric character (0–9)
    + unique password history requirement
    + common word restriction policy
    + Limited password attempts 
  + The Importance of Secure Socket Layer/Transport Layer Security
    + first line of defense when sending this kind of information over the Internet
    + protection against hackers eavesdropping, intercepting, capturing, or changing your secure data
+ Authorization
  + allow you access to the resources for which you are preapproved
  + The Importance of Directory Services
    + Role-based security access
    + Security group–based access
+ Synthetic or Real User Logging
  + growing challenge to verify that a user on a computer is a “real person”
  + CAPTCHA during a password or account creation process
    + validate your identity with human observation and interaction
+ Verifying a User in Cloud Environments
  + identity access management solutions have become extremely important
  + federated structures to work with identity service providers
    + The principal (known as the “subject”)
    + The entitlement (the access framework)
    + The data source (known as the “objects”)
+ Verifying Hosts
  + how can we be sure the host you are accessing is real and authentic?
+ Verifying Host Domain Name System and Internet Protocol Information
  + ensure that a host identity is valid and registered accurately on the Internet

---

#### Collaborative Discussion

WannaCry was a ransomware worm that exploited a vulnerability allowing it to move across networks and encrypt them. This vulnerability is believed to have been developed by the National Security Agency (NSA) and subsequently stolen by a group called the Shadow Brokers. The worm managed to infect computers around the globe, disrupting operations in major critical sectors like healthcare and impacting individuals' digital rights (Anon, 2017).

First, critical services were disrupted; some healthcare providers were unable to care for non-critical emergencies, though luckily—even though this is a broad measure—there was no increase in mortality (Ehrenfeld, 2017; Ghafur et al., 2019). Additionally, there were reports of manufacturing companies stopping production in order to contain the infection in 2018, almost a year after the initial incident (Gates, 2018).

Second, the right to data portability is rendered impossible if the data is unavailable. In the case of ransomware, data is encrypted, making it impossible to read or extract the necessary information to comply with data subject requests. Furthermore, even though this particular ransomware did not exfiltrate information, new threat actors now utilize double extortion tactics by both exfiltrating and encrypting data. These actors demand payment to decrypt the files and prevent the publication of stolen data (Tuttle, 2021). This violates the data subject's right of access, as the data could be made public and transferred around the globe without the data subject being able to object or receive notification.

#### Encryption, AI and Forensic Powers
“Governments should have the power to weaken encryption or access AI-processed data to support forensic investigations.”

+ For:
  + AI can help identify the hardware device that was used in a crime, for instnace if a anthena disruption was caused by a wireless card, a GSM jamming device or others (Hernandez-Castro, 2022).
  + Weaken encryption could allow police to identify ilegal content or people that could endanger minors (McQue, 2025).


+ Against:
  + AI still lacks explainability makign difficult to understand the reason of certain desition (Veksler et al, 2026). In case of error it will be difficult if not impossible to understand the reason and avoid missjudgement.
  + Govermensts could use this information to find minorities or opositors and take actions agains their wellbeing or even their lifes (Kirchgaessner, 2022).
  + Adversaries could also use the same weaken encryption to also spy on people and damage the nation by exfiltrating sensitive information (Anon, 2017). 
  + Processing peoples data without their knowledge before a criminal case is open goes agains GDPR and violates their digital rights.


---

#### Reflexion
+ The current threat landscape shows that adversaries from different levels can attempt to violate our rights: from hacktivists defacing organizational websites to nation-states compromising infrastructure that contains individuals' critical information. While AI offers advantages in combating these threats, it also poses risks due to the current limitations of the technology. In order to improve this situation, there must be transparency and trust between governments and the public, but this remains an open challenge.


---

#### Reading 

+ Anon (2017) The WannaCry ransomware attack. [Online] 23 (4), vii–ix.
+ Ehrenfeld, J. M. (2017) WannaCry, Cybersecurity and Health Information Technology: A Time to Act. Journal of medical systems. [Online] 41 (7), .
+ Gates, D. (2018) 'Boeing hit by WannaCry virus, but says attack caused little damage', The Seattle Times, 28 March. Available at: https://www.seattletimes.com/business/boeing-aerospace/boeing-hit-by-wannacry-virus-fears-it-could-cripple-some-jet-production/ (Accessed: 17 May 2026).
+ Ghafur, S. et al. (2019) A retrospective impact analysis of the WannaCry cyberattack on the NHS. NPJ digital medicine. [Online] 2 (1), .
+ Hernandez-Castro, C.J. (2022) 'Machine learning and deep learning for hardware fingerprinting', in Batina, L., Bäck, T., Buhan, I. and Picek, S. (eds) Security and artificial intelligence: a crossdisciplinary approach. Cham: Springer, pp. 181–213. doi: 10.1007/978-3-030-98795-4_9.
+ Kirchgaessner, S. (2022) 'More Polish opposition figures found to have been targeted by Pegasus spyware', The Guardian, 17 February. Available at: https://www.theguardian.com/world/2022/feb/17/more-polish-opposition-figures-found-to-have-been-targeted-by-pegasus-spyware (Accessed: 17 May 2026).
+ McQue, K. (2025) 'Privacy at a cost: the dark web’s main browser helps pedophile networks flourish, experts say', The Guardian, 25 August. Available at: https://www.theguardian.com/technology/2025/aug/25/tor-network-child-sexual-abuse (Accessed: 17 May 2026).
+ Tuttle, H. (2021) Ransomware Attackers Turn to Double Extortion. Risk management 68 (2) p.8–9.
+ Veksler, M. et al. (2026) ‘Digital Forensic AI You Can Explain: A Case Study on Video Source Camera Identification’, in Proceedings / IEEE Workshop on Applications of Computer Vision. [Online]. 6 March 2026 IEEE. pp. 7030–7039.

