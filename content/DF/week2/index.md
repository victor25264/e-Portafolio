---
title: "Principles of Evidence and Proof in Digital Forensics" 
date: 2026-05-02
tags: ["digital forensic", "GDPR"]
author: ["Victor"]
description: "" 
summary: "" 
cover:
    # image: "paper1.png"
    alt: "Principles of Evidence and Proof in Digital Forensics"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Principles of Evidence and Proof in Digital Forensics

##### Building a Secure Organization
+ cybersecurity has transitioned from being a peripheral technical issue to becoming a fundamental component of the digital ecosystem
+ it encompasses strategic planning, organizational priorities, and cultural adaptations
+ ISO/IEC 27002:2022 and the Broader Landscape of Standards
  + ISO/IEC 27002:2022:
    + emphasis on structured information security management
    + emphasizes protection not just for security but for societal trust
    + promotes controls that are application-specific, moving away from generic solutions to fit varied organizational needs
    + relying solely on ISO/IEC 27002:2022 for security strategies is limiting
  + NIST framework
    + which gives sector-specific guidance
    + is adaptable, catering to different industry challenges, such as those of a hospital versus a bank
  + Payment Card Industry Data Security Standard (PCI DSS)
    + for card transactions, addressing specific payment system vulnerabilities
  + Health Insurance Portability and Accountability Act (HIPAA)
    + ensuring the safe handling of medical information
  + simply following these standards is not enough
+ Integrating Standards Within a Risk-Based Data Protection Framework
  + risk-driven strategy requires an in-depth audit of an organization's data infrastructure
  + cybersecurity standards offer actionable guidance
    + lay out controls, actions, and best practices designed for specific threat mitigation
  + EU General Data Protection Regulation is factored in, the integration process becomes more complex
    + Regulation is not just about data protection; it emphasizes individual data rights
    + the Regulation stresses transparency, accessibility, and control for individuals whose data is being processed
    + Combining cybersecurity standards with the Regulation mandates a coordinated strategy
  + interdepartmental collaboration is essential
  + championing a risk-based strategy in our current digital climate is more than essential—it is imperative
  + EU RM toolbox streamlines various risk assessment methods, paving the way for consistent and effective risk management across Europe
+ Six Steps of a Data Protection Compliance Framework
  + Accountability
    + organizational commitment to accountability
    + adoption of internal policies which are consistent with external criteria
  + Data protection by design and by default
    + Organizations should consider compliance with the EU General Data Regulation's data protection principles as a core objective
  + Risk assessments, Data protection impact assessments and security
    + serve to assist the organization in defining the “appropriate technical and organizational” security measures it should implement in order to comply with the requirements of Article 32 of the Regulation
  + Information to the data subject
    + provision of complete and understandable information to data subjects on the organization's processing practices,
  + Legitimate basis
    + able to understand, interpret, and correctly apply each of the Regulation's different legal bases
    + organization must ensure it adopts internal policies to clearly determine the scope of application of each legal basis
  + Data subject rights
    + organization must ensure it develops a consistent and effective approach to the management of data subject rights
+ Cultivating a Cybersecurity Culture: The Bedrock of a Robust Risk-Based Approach
  + Cybersecurity is not just a technical challenge, but a human one
  + in addition to deploying robust security solutions, organizations must foster a strong security culture among all employees
  + mature security culture integrates this responsibility into every aspect of the organization
  + This involves regular training, interdepartmental knowledge exchanges, and a no-blame atmosphere that encourages employees to disclose their limitations without fear of repercussions
  + Leadership plays a pivotal role in shaping this culture



---


#### AI-Enhanced Chain of Custody Exercise

+ Based on the chain of custody provided by [NIST](https://view.officeapps.live.com/op/view.aspx?src=https%3A%2F%2Fwww.nist.gov%2Fsystem%2Ffiles%2Fdocuments%2F2017%2F04%2F28%2FSample-Chain-of-Custody-Form.docx&wdOrigin=BROWSELINK)
+ A primary weakness is that current chain of custody (CoC) forms are designed exclusively for human consumption. While AI can extract data from Word or PDF files, adopting a structured format like JSON would significantly enhance automated processing and better support human-in-the-loop workflows.
+ Current CoC documentation identifies the human users involved in data processing; however, with the proliferation of Large Language Models (LLMs), it is imperative to include parameters that specify which model interacted with the evidence. At a minimum, the CoC should record the LLM name, version, provider, and the specific prompt utilized.
+ A critical risk involves LLMs potentially introducing errors or unauthorized alterations to historical records within the chain of custody. To maintain admissibility, robust guardrails—such as version control, digital signatures, and blockchain technology—must be implemented to ensure the record's integrity and immutability.


#### Collaborative Discussion

What is the biggest challenge in ensuring the admissibility of AI-generated or AI-assisted digital evidence, and how can forensic investigators address it?

Provide at least one reference in Harvard referencing format and reply to at least one peer’s post, comparing perspectives.

Example focus areas:

AI model transparency and explainability.
Algorithmic bias or errors in forensic interpretation.
Legal standards for AI-assisted decision-making.



#### Seminar


---

#### Reflexion



---

#### Reading 

+ Agarwal, B. et al. (2025) From Paper to Structured JSON: An Agentic Workflow for Compliant BMR Digital Transformation. arXiv.org.
