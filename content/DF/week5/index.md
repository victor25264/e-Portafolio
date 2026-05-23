---
title: "Ethics in Digital Forensics" 
date: 2026-05-30
tags: ["digital forensic", "GDPR"]
author: ["Victor"]
description: "Bias is a challenge that forensic practitioners must actively manage and overcome." 
summary: "Bias is a challenge that forensic practitioners must actively manage and overcome." 
cover:
    # image: "paper1.png"
    alt: "Ethics in Digital Forensics"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Ethics in Digital Forensics

##### Forensic Process & Methodology
+ Why Methodology Matters
  + clear methodology keeps investigations consistent and avoids ad hoc practices
    + evidence collected can withstand scrutiny in court and meet admissibility requirements
    + following structured steps, investigators protect both the integrity of the evidence and their professional credibility
    + reduces risks of error or bias, providing a defensible framework that enhances trust in forensic outcomes
  + Phases:
    + Identification:
      + recognise where potential evidence exists
      + what is prioritised for further work, especially when resources are limited
      + volatility plays a key role so these need urgent handling
      + proper scoping helps focus efforts, ensuring investigations remain efficient and proportionate
    + Collection
      + should be acquired using forensic tools that prevent alteration
      + action is documented in a chain of custody log to ensure full traceability
      + preserve original data exactly as it was found
      + following proper protocols ensures that the evidence can be trusted and defended in legal proceedings
    + Analysis
      + raw evidence is turned into meaningful information
      + carefully examining data using validated tools and frameworks, ensuring repeatability and accuracy
      + reconstruct timelines of events, connect digital artefacts, and search for anomalies that indicate wrongdoing
      + cross-source correlation is key
    + Reporting
      + communicates investigative findings
      + must be written clearly, objectively, and tailored to audiences
      + every claim should be backed with evidence, ensuring transparency and traceability
      + good forensic report avoids speculation, remaining impartial while highlighting the evidence trail
      + strong reporting enhances credibility and supports successful prosecution or defence
+ Challenges in Practice
  + single collection mistake could corrupt or invalidate evidence
  + over-trust automated tools without questioning their limitations or reliability
  + interpretation can be shaped by assumptions
  + legal and jurisdictional challenges arise when evidence spans multiple countries
  + evolving technologies like cloud and IoT require constant adaptation of methods and tools
+ The Digital Evidence Lifecycle
  + Stages: Creation, Collection, Preservation, Analysis, Presentation and Archival
    + foundation that converts fragile digital traces into credible, legally defensible evidence
    + every step must be documented in a chain of custody
    + every time evidence moves, we log who, when, and why
    + transforms raw digital data into legally defensible evidence
+ Volatility and the Order of Collection
  + first rules in digital forensics is collect volatile data first
  + apply the Order of Volatility and timing and sequence are just as critical as the data itself
  + should we image the system live or dead?
    + it risks altering evidence
  + choosing the right method depends on the case
+ Modern Digital Forensics: Tools, Techniques, and Legal Boundaries
  + Forensic Imaging
    + cornerstone of digital forensics
    + the process of creating an exact bit-for-bit copy of a storage device
    + forensic image captures deleted files, unallocated space, and even metadata that a normal copy misses
  + File System & Artifact Analysis
    + we can see not just what files exist, but when they were created, modified, or accessed
    + reconstructing these clues, we can build a precise digital timeline of activity, what happened, when it happened, and sometimes even who was responsible
  + Mobile Forensics
    + most sensitive area of investigation because smartphones contain our entire digital lives communications, locations, and social data
    + must also consider jurisdiction and privacy laws, especially when cloud backups are stored abroad
  + Network & Cloud Forensics
    + evidence flows across networks, servers, and cloud platforms
    + cloud services audit logs hold vital metadata on access and activity
    + challenge is jurisdiction: cloud data may reside in another country
  + AI & Automation
    + investigators turn to AI and automation to help handle the flood of data
    + tools improve efficiency, but they also raise ethical and legal challenges
+ AI Accountability and Forensic Reporting
  + transparency is non-negotiable
  + AI can assist, but a human investigator must always validate and interpret the results
  + AI tools can unintentionally favour or exclude patterns, leading to unfair or misleading forensic results
  + Investigators must understand how an AI system reaches its conclusions to ensure accountability
  + I analysis that must be interpretable and defensible in court - not a “black box” decision
+ Always state your limitations - for instance, if encryption blocked access to a file - because honesty builds trust
---

#### Collaborative Discussion: Biases in Forensic Investigations

There are multiple types of bias that affect forensic investigations. One of them is confirmation bias, which affects both jurors and forensic practitioners.

First, studies show that jurors can discount examiners who were given task-irrelevant information, such as being aware of the defendant's confession. Jurors tend to place more trust in the testimony of a forensic practitioner who was not aware of the confession or who denied being vulnerable to bias. Therefore, practitioners should avoid receiving task-irrelevant information, as this can affect the trust jurors place on their assessment (Kukucka et al., 2020; Thompson & Scurich, 2019) .

Second, other studies argue that forensic practitioners can be susceptible to confirmation bias in their analysis and decision-making. This particularly affects novice practitioners and laboratories that do not have processes in place to minimize this issue. In both cases, it is important to have capable and trained practitioners who understand forensics and the psychology of decision-making, maintain linear and documented processes, and verify forensic tools before use (Eeden et al, 2019; Kassin et al., 2013).

#### Ethics

Forensic practitioners can use hacked or leaked data only when it is necessary to gain a clear picture of the incident's impact. In the realm of ransomware, threat actors often publish data leaks to pressure managers to pay the ransom. This information can provide clues to a forensic investigator on which systems to prioritize and where to look for evidence. In other cases, like unrecognized bank transfers, leaks of stealer logs can give an idea of when the credentials were stolen. In both cases, choosing the right tooling is critical. Using AI should be done only if the model will not share the processed data with the provider, as investigators need to avoid violating GDPR or people's privacy. In conclusion, hacked or leaked data can be used when it is necessary for the investigation and when it helps protect and respect people's rights.

#### Code of Ethics Review

The code of (ethics of ACM)[https://www.acm.org/code-of-ethics]  has multiple principles that, I consider, must be follow by forensic practicioners. The following are the principles I consider more relevant for forensic analyst:

+ Avoid harm: To minimize the possibility of indirectly or unintentionally harming others, computing professionals should follow generally accepted best practices unless there is a compelling ethical reason to do otherwise.
+ Be honest and trustworthy: Honesty is an essential component of trustworthiness. A computing professional should be transparent and provide full disclosure of all pertinent system capabilities, limitations, and potential problems to the appropriate parties.
+ Respect privacy:Technology enables the collection, monitoring, and exchange of personal information quickly, inexpensively, and often without the knowledge of the people affected. Therefore, a computing professional should become conversant in the various definitions and forms of privacy and should understand the rights and responsibilities associated with the collection and use of personal information.
+ Strive to achieve high quality in both the processes and products of professional work: Computing professionals should insist on and support high quality work from themselves and from colleagues. The dignity of employers, employees, colleagues, clients, users, and anyone else affected either directly or indirectly by the work should be respected throughout the process. 
+ Know and respect existing rules pertaining to professional work:
"Rules" here include local, regional, national, and international laws and regulations, as well as any policies and procedures of the organizations to which the professional belongs. Computing professionals must abide by these rules unless there is a compelling ethical justification to do otherwise. Rules that are judged unethical should be challenged.

---

#### Reflexion
+ Forensic practitioners must be responsible when working to avoid bias. As human beings, we will always have biases, but being aware of them and ensuring that we take the necessary precautions to avoid falling for them is critical. 


---

#### Reading 

+ Eeden, C. A. J. et al. (2019) The Forensic Confirmation Bias: A Comparison Between Experts and Novices. Journal of forensic sciences. [Online] 64 (1), 120–126.
+ Kassin, S. M. et al. (2013) The forensic confirmation bias: Problems, perspectives, and proposed solutions. Journal of applied research in memory and cognition. [Online] 2 (1), 42–52.
+ Kukucka, J. et al. (2020) Forensic Confirmation Bias: Do Jurors Discount Examiners Who Were Exposed to Task‐Irrelevant Information? Journal of forensic sciences. [Online] 65 (6), 1978–1990.
+ McNab, C. (2016) Network security assessment : know your network. 3rd ed. Beijing: O’Reilly.
+ Orzach, Y. & Khanna, D. (2022) Network Protocols for Security Professionals : Probe and Identify Network-Based Vulnerabilities and Safeguard Against Network Protocol Breaches. First edition. Birmingham, England: Packt Publishing Ltd.
+ Thompson, W. C. & Scurich, N. (2019) How Cross‐Examination on Subjectivity and Bias Affects Jurors’ Evaluations of Forensic Science Evidence. Journal of forensic sciences. [Online] 64 (5), 1379–1388.

