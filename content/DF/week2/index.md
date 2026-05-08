---
title: "Principles of Evidence and Proof in Digital Forensics" 
date: 2026-05-02
tags: ["digital forensic", "GDPR"]
author: ["Victor"]
description: "Data admissibility is critical to digital forensics and remains a significant open challenge." 
summary: "Data admissibility is critical to digital forensics and remains a significant open challenge." 
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

Recent Large Language Models (LLMs) have demonstrated significant advancements in reasoning and specialized domains such as cybersecurity (Anthropic, 2026). While these models are effective at scaling operations, unpredictable outputs, a lack of explainability, and hallucinations remain persistent challenges for AI systems. For these reasons, evidence generated or collected by AI may face rigorous admissibility challenges in legal contexts.

First, it is imperative that the integrity of the original data is maintained during the collection and processing phases (Boumediene & Boumediene, 2025). AI has been shown to execute unintended commands, such as deleting databases (Mansoor, 2026). Admissibility may be compromised if an AI modifies original evidence or extracts more data than necessary, thereby violating user privacy. Furthermore, during the analysis phase, results must derive from justifiable methods, tools, and techniques, and be reported accurately. In this regard, AI explainability continues to be a hurdle, as certain decisions made by the model cannot be interpreted by human observers. Finally, AI models are prone to hallucinations, which can lead to erroneous conclusions even when the underlying data is accurate (Papagiannopoulos et al., 2025).

---

#### Reflexion
+ As workflows integrate AI, the lack of deterministic responses will continue to be a challenge. However, this can be mitigated by following a framework where the AI does not interact directly with the evidence, but rather with a forensic copy, and is constrained to proven tools and formats. I believe these frameworks can help mitigate risks and enable scalable forensics; nevertheless, human expertise remains essential to corroborate the generated information.


---

#### Reading 

+ Agarwal, B. et al. (2025) From Paper to Structured JSON: An Agentic Workflow for Compliant BMR Digital Transformation. arXiv.org.
+ Anthropic (2026) Project Glasswing: securing critical software for the AI era. Available at: https://www.anthropic.com/glasswing (Accessed: 7 May 2026).
+ Boumediene, S. L. & Boumediene, S. (2025) Lessons Learned from Failed Digital Forensic Investigations. Journal of forensic accounting research. [Online] 10 (1), 357–380.
+ Mansoor, S. (2026) 'Claude-powered AI agent’s confession after deleting a firm’s entire database: ‘I violated every principle I was given’', The Guardian, 29 April. Available at: https://www.theguardian.com/technology/2026/apr/29/claude-ai-deletes-firm-database (Accessed: 7 May 2026).
+ Papagiannopoulos, I. et al. (2025) Comparison of explainability methods for hallucination analysis in LLMs. Open research Europe. [Online] 5191.
