---
title: "History of Network Security, Vulnerabilities and Approaches" 
date: 2026-05-02
tags: ["pentesting"]
author: ["Victor"]
description: "Digital enterprises face inherent risks and vulnerabilities that require proactive mitigation." 
summary: "Digital enterprises face inherent risks and vulnerabilities that require proactive mitigation." 
cover:
    # image: "paper1.png"
    alt: "History of Network Security, Vulnerabilities and Approaches"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### History of Network Security, Vulnerabilities and Approaches
+ CIA:
  + Confidentiality: 
    + be clear on the level of confidentiality required for each piece of data
    + UK classification: Official, Secret and Top secret
  + Integrity: 
    + ensure that an asset is not changed by an unauthorised person or in an unauthorised way
    + reviewers and editors are aware that any changes must be logged and managed so that an audit trail is available
  + Availability: 
    + reliable and timely access to data and resources
    + Recovery Time Objective (RTO)
    + Recovery Point Objective (RPO)
  + Non-repudiation
    + often goes hand in hand with integrity
    + ensure that as well as message integrity being assured
+ Vulnerabilities:
  + These tend to pull together information around vulnerabilities from a number of vendors whose components may together form a third-party product
  + Process:
    + the finder (or another representative from that organisation) will contact the vendor
    + vendor may already be aware, either through their own testing or via contact from other users
    + vendor will validate the report and prioritise it based on several factors
    + A remediation plan is created
    + he remediation is actioned or deployed, depending on whether it's a workaround or patch
+ Security Standards, Principles and Best Practice
  + One of the roles of the vulnerability assessor/'pen tester' is to advise their client on best practice settings for their website or application
  + Principles for the Protection of Data
    + economy of mechanism: simple design
      + anti-patter: multiple back-to-back firewalls, increases complexity, maintenance and management overhead
    + Least Privilege
    + Open Design: security through obscurity
      + security controls are obvious and well documented
      + security policy should be separated from the security mechanism
    + Fail-safe Default: deny first
      + Only install a service, add a user or open a port if it is explicitly required by the system or application
    + Separation of Privilege
      +  aim to enforce those privileges through multi-factor authentication
    + The Least Common Mechanism
      + use of security tiers and partitioning functions between tiers
    + Complete Mediation
      + checks the status of key files for evidence of tampering
    + Psychological Acceptability (least astonishment)
      + effect that security mechanisms and controls may have on the average user
    + Work Factor
      + work factor is concerned with the cost of circumventing a security control
    + Compromise Recordings
      + recording access and changes to a system



---


#### Case Study: Digitalisation – What are the Security Implications of the Digital Economy?

+ What do you consider as a fully digital enterprise?
  + A fully digital enterprise integrates technology into its processes, culture, and people, yielding clear benefits for the organization.

+ What are the cyber security challenges/concerns with a fully digital enterprise?
  + Vulnerability management, data governance, and legal compliance are critical challenges for a fully digital enterprise. Threats are constantly evolving and can be exploited by adversaries to disrupt business operations. An enterprise must establish a robust vulnerability management program that uses risk assessments to prioritize vulnerabilities and automation to reduce the mean time to patch (MTTP) (Knapp, 2024). Data governance ensures that the data lifecycle is managed according to business and compliance requirements. This allows organizations to leverage data to improve decision-making while protecting it from unauthorized access. Finally, different regions impose distinct legal requirements for businesses to protect data and privacy, such as GDPR (Sharma & Menon, 2020).

+ What are the cyber security challenges for a bricks and mortar SME wanting to become a digital enterprise?
  + A critical challenge is the initial investment of time and capital required to deploy technology and prepare the organization for its adoption. This transition period, during which the organization adapts current processes to digital workflows, carries the risk of misconfiguration if not managed properly (Doroiman, 2024).


---

#### Reflexion

+ The forensics process is critical to ensuring the admissibility of evidence in court. Nevertheless, because attackers are often located on the other side of the world, some companies bypass these procedures in favor of a faster recovery. Unfortunately, attempting to expedite the process often leaves attacker persistence or the original vulnerability intact, which frequently leads to re-infection.


---

#### Reading 

+ Doroiman, M. M. (2024) THE DIGITAL ENTERPRISE LANDSCAPE: HOW DESI METRICS SHAPE ECONOMIC GROWTH IN THE EU.
+ Knapp, E. D. (2024) Industrial Network Security : Securing Critical Infrastructure Networks for Smart Grid, SCADA, and Other Industrial Control Systems. Third edition. Cambridge, MA: Syngress.
+ Sharma, S. & Menon, P. (2020) Data privacy and GDPR handbook. 1st edition. Hoboken, New Jersey: John Wiley & Sons.
