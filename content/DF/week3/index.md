---
title: "Global Legal and Regulatory Frameworks: GDPR and Cross-Border Challenges" 
date: 2026-05-16
tags: ["digital forensic", "GDPR"]
author: ["Victor"]
description: "Forensic practitioners must exercise careful consideration regarding data collection and processing when operating under the GDPR." 
summary: "Forensic practitioners must exercise careful consideration regarding data collection and processing when operating under the GDPR." 
cover:
    # image: "paper1.png"
    alt: "Global Legal and Regulatory Frameworks: GDPR and Cross-Border Challenges"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Global Legal and Regulatory Frameworks: GDPR and Cross-Border Challenges

##### Global Legal & Regulatory Frameworks (GDPR Focus)
+ Introduction to Global Frameworks
  + cybercrime may involve a hacker in one country, a victim in another, and servers in a third
  + two big challenges
    + ensuring evidence is collected lawfully in each jurisdiction
    + making sure it will be admissible if presented in court
+ What is GDPR?
  + one of the most significant privacy regulations in the world
  + applies to all EU member states and, importantly, to any organisation outside the EU that handles EU citizens’ personal data
  + regulation is also strict: organisations can face fines of up to 4% of global turnover for breaches
  + must follow GDPR principles carefully. Failure to do so doesn’t just risk fines, it can also mean that evidence is excluded in court
  + several key principles
    + lawfulness
    + fairness
    + transparency
    + purpose limitation
    + stated reasons
  + forensic investigations often involve personal data, so investigators must always follow GDPR rules
+ Cross-Border Data Challenges
  + Digital evidence is often stored across multiple jurisdictions, especially in cloud or multinational systems
  + nvestigators usually need formal agreements like Mutual Legal Assistance Treaties, or MLATs
  + Privacy vs. Law Enforcement
    + there is an ongoing tension between protecting privacy as a fundamental right and giving law enforcement sufficient access to data to fight crime
+ Case Studies
  + Schrems II (2020)
    + US surveillance laws did not provide enough protection for EU citizens’ data
    + companies and investigators must now rely on alternatives such as Standard Contractual Clauses
  + Meta (Facebook) and GDPR Violations (2023)
    + user data from Europe was repeatedly transferred to U.S. servers without proper safeguards
    + GDPR compliance isn’t just about preventing breaches, it’s about proving control and accountability through digital evidence
  + British Airways Data Breach (2018–2020)
    + attackers inserted a malicious JavaScript on the airline’s website, stealing payment data from online bookings
    + BA had insufficient monitoring and delayed detection, which increased the fine
+ Forensic Reporting in Practice
  + investigators must also ensure that personal data is handled securely and only transferred across borders using approved mechanisms
  + clearly state the context, explain your methodology, and present your findings with evidence
  + accuracy and transparency must always come first
+ Expert Witness in Practice
  + testifying in court is about more than repeating what you wrote in your report
  + staying composed under pressure helps you demonstrate the professionalism that courts expect from expert witnesses
  + cross-examination can be one of the most stressful parts of acting as an expert witness
  + credibility is your greatest asset in court
  + being an expert witness comes with serious ethical responsibilities
---

#### Collaborative Discussion
During an incident, forensic practitioners must collect and process evidence to determine the root cause and provide recommendations for a resilient recovery. Throughout the collection and processing phases, the General Data Protection Regulation (GDPR) is a critical consideration for ensuring that evidence remains admissible.

For instance, GDPR Article 5(1)(c) requires that data collection be limited to what is strictly necessary for the intended purpose (GDPR, 2022). For this reason, forensic practitioners may be prohibited from performing full disk or cloud forensic copies; instead, they must target specific logs and timeframes to comply with this regulation. This targeted approach requires practitioners to dedicate more time to analyzing the necessary forensic artifacts and refining their methods of extraction and storage.

Another example is GDPR Article 17, which grants data subjects the "right to erasure" (GDPR, 2022). During a forensic investigation, it is possible that such a request must be granted, requiring the business to comply. In this scenario, the organization must delete the subject's data from its primary systems, and the forensics team must simultaneously remove it from their collected evidence. Additionally, if the forensics team has shared this data with a third-party provider, they must ensure that the provider also deletes the information. This requirement significantly complicates the investigative process if the data is not meticulously organized and tracked.


#### Digital Forensics Tools Task
+ What Wireshark is used for?
  + Wireshark is a widely used network protocol analyzer designed to capture and "sniff" network traffic across one or multiple network interfaces on a host. 

+ What kind of data does it capture?
  + It captures comprehensive packet data across various layers of the OSI model, including TCP, UDP, and other protocol connections. It reveals HTTP headers, DNS requests, IP addresses, and payload data. Additionally, it provides metadata derived from traffic aggregation, such as packet timing and sequence information.

+ How can it help in a forensic investigation?
  + Wireshark is instrumental in reconstructing the actions of a user or an attacker by mapping out established connections. It can help identify Command and Control (C2) servers by analyzing DNS queries or suspicious TCP handshakes. Furthermore, forensic analysts can use its aggregation features to determine throughput values, identify data exfiltration patterns, and pinpoint anomalies in network behavior.

---

#### Reflexion
+ Forensic practitioners must account for the GDPR and specific national regulations to ensure that collected evidence is both sufficient and admissible in court. Preparation is critical in this regard; by having specialized tools and configurations pre-validated for targeted evidence collection, organizations can significantly reduce the mean time to recovery (MTTR) and ensure business continuity.


---

#### Reading 

+ Agarwal, B. et al. (2025) From Paper to Structured JSON: An Agentic Workflow for Compliant BMR Digital Transformation. arXiv.org.
+ Anthropic (2026) Project Glasswing: securing critical software for the AI era. Available at: https://www.anthropic.com/glasswing (Accessed: 7 May 2026).
+ Boumediene, S. L. & Boumediene, S. (2025) Lessons Learned from Failed Digital Forensic Investigations. Journal of forensic accounting research. [Online] 10 (1), 357–380.
+ Mansoor, S. (2026) 'Claude-powered AI agent’s confession after deleting a firm’s entire database: ‘I violated every principle I was given’', The Guardian, 29 April. Available at: https://www.theguardian.com/technology/2026/apr/29/claude-ai-deletes-firm-database (Accessed: 7 May 2026).
+ Papagiannopoulos, I. et al. (2025) Comparison of explainability methods for hallucination analysis in LLMs. Open research Europe. [Online] 5191.
+ Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data (General Data Protection Regulation) (2022) Official Journal L119, p. 1. Available at: https://www.legislation.gov.uk/eur/2016/679/contents (Accessed: 10 May 2026).
