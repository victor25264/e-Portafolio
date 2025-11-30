---
title: "Security and Risk Management Standards" 
date: 2025-11-15
tags: ["risk","management","standards", "PCI", "GDPR"]
author: ["Victor"]
description: "There are multiple standards that cover risk management" 
summary: "There are multiple standards that cover risk management" 
cover:
    # image: "paper1.png"
    alt: "Security and Risk Management Standards"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Security and Risk Management Standards

##### Common standards 
######  GDPR
+ General Data Protection Regulation is a European regulation 
+ It has seven principles: Lawfulness, fairness and transparency requirements, purpose limitation principle, data minimisation principle, data storage, storage limitation principle, integrity and confidentiality principle, and accountability principle.
+ Focus on proper assessment of risk and documented policies and principles

######  ISO 27000
+ It is a family of standards and guides for information security management systems (ISMS)
+ Depending on the organization, some parts of the standard may not apply
+ The ISMS must be aligned with the quality management system
+ ISO 27002 is a guideline standard that provides details on each 
+ ISO 27005 and ISO 31000 are key standards

######  PCI-DSS
+ Payment Card Industry Data Security Standard was created by the Payment Card Industry Data Security Standards Council.
+ Contains 12 objectives and six categories
  + C.1. Build and maintain a secure network and system: O.1. Installing and maintaining a firewall configuration to protect cardholder data, O.2. Not using vendor-supplied defaults for system passwords and other security parameters
  + C.2. Protect cardholder data: O.3. Protecting stored cardholder data, O.4. encrypting transmission of cardholder data across open, public networks.
  + C.3. Maintain a vulnerability management program: O.5. Protect all systems against malware and regularly update anti-malware software or programs, O.6. Develop and maintain secure systems and applications
  + C.4. Implement strong access control measures: O.7. Restricting access to cardholder data on a business need-to-know basis, O.8. Identifying and authenticating access to system components, O.9. Restricting physical access to cardholder data
  + C.5. Regular monitor and test networks: O.10. tracking and monitoring all access to network resources and cardholder data, O.11. regularly testing security systems and processes
  + C.6. Maintain an information security policy: O.12. maintaining a policy that addresses information security for all personnel

######  NIST
+ National Institute of Standards and Technology (NIST) contributes to security standards
+ Some relevant publications are the Computer Security Research Center Special/ Security Publications
+ The cybersecurity framework is composed of: identify, protect, detect, respond, and recover
+ Federal Information Processing Standards (FIPS) are intended to be used by federal government agencies to safeguard non-national security federal information systems

######  COBIT VS ITIL
+ Control Objectives for IT (COBIT) 
  + Deals with governance, assurance, and auditing of business information systems
  + Emphasis on risk management, information security, and compliance
  + Core principles: meeting stakeholder needs, covering the entire enterprise, application of a single integrated framework, taking a holistic approach, separating governance from management
+ Information Technology Infrastructure Library
  + Concern with service design, implementation, and operations, and certainly
  + Principles: continual service improvement, service design, service organization, service transition, service strategy.

##### Risk management
+ If we all agree on the results of the risk assessments, we do not necessarily agree on what risks we should accept or what the best decision is
+ Risk governance refers to the application of governance principles for the handling of risk
+ Risk Informed:
  + Risk governance refers to the application of governance principles for the handling of risk
  + Risk acceptance criteria will provide constraints for this balance with respect to these values. 
+ Precautionary Principle:
  + There are threats of serious or irreversible damage; lack of complete scientific certainty shall not be used as a reason for postponing cost-effective measures
  + expresses that if the consequences of an activity could be severe and subject to scientific uncertainties
+ Cautionary Principle:.´
  + The consequences of an activity could be severe and subject to uncertainties, so cautionary measures should be taken, or the activity should not be carried out.
  + The precautionary principle is that the latter refers to ‘scientific uncertainties’, whereas the former just refers to ‘uncertainties.’
  + The level of caution adopted needs to be balanced with other concerns 

  
##### Formative Activities
+ Case Study 5:  Disclosure of CCTV footage from a direct provision centre.
  + What is the specific aspect of GDPR that your case study addresses? 
    + It covers multiple principles: storage limitation principle, as the data was stored in a link until it expired after the required time; integrity and confidentiality principles, as an unauthorized third party obtained the data; and accountability principle, as there was no record of the data controller following the above principles. Also, the company did not answer the request for information.
  + How was it resolved?
     + The company attempted to obtain the necessary information, but, as shown, the issues related to the process for sharing and storing data led the company to receive a fine.
  + If this was your organisation what steps would you take as an Information Security Manager to mitigate the issue?
    + As mentioned in the case, clear policies and procedures for storing, sharing, and using data are critical. Also, systems such as SIEMs or DLPs can help detect unauthorized access to data.


---



#### Reflexion
+ Multiple standards have many principles, but they share some core components, such as risk management. Depending on the industry, some standards will be used more because they have greater acceptance and have been tested in similar industries. A challenge that always happens is understanding the correct maturity of the standard adoption. I have seen some companies that use spreadsheets claim to be mature, yet they lack basic components. This can be dangerous, as they may accept risks they consider minor, but because they are not mature enough, the risk should be classified as high.



---

#### Reading 

+ Adhillah, M. (2025) Systematic Literature Review the Development of Enterprise Risk Management. Jurnal Manajemen Bisnis, Akuntansi dan Keuangan. [Online] 4 (1), 81–100.
+ Sutton, D. (2021) Information risk management : a practitioner’s guide. 2nd ed. England: BCS Learning & Development Limited.