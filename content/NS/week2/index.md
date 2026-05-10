---
title: "Advanced Persistent Threats: Applying the Cyber Kill Chain Model to a Case Study" 
date: 2026-05-07
tags: ["APT", "Threat intelligence"]
author: ["Victor"]
description: "APTs present an evolving challenge due to their sophisticated TTPs and their innovation in engineering new attacks." 
summary: "APTs present an evolving challenge due to their sophisticated TTPs and their innovation in engineering new attacks." 
cover:
    # image: "paper1.png"
    alt: "Advanced Persistent Threats: Applying the Cyber Kill Chain Model to a Case Study"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Advanced Persistent Threats: Applying the Cyber Kill Chain Model to a Case Study

##### A Survey on Advanced Persistent Threats: Techniques, Solutions, Challenges, and Research Opportunities
+ Introduction
  + APT attackers might use familiar methods to break into their target entity’s network, but the tools they utilize to penetrate are not familiar
  + the well-funded attackers work on creating sophisticated tools such as new types of malware that are not usually detected by signature-based anti-virus software or intrusion detection and prevention systems
+ Advance Persistent Threats
  + What Is APT?
    + Advanced: APT attackers are usually well-funded with access to advanced tools and methods
    + Persistent: APT attackers are highly determined and persistent and they do not give up
    + Threat: The threat in APT attacks is usually sensitive data loss or impediment of critical components or mission
  + What is not APT?
    + an excuse for organizations’ failure to protect themselves from what other wise is a targeted attack
    + if the attack is not a surprise and is highly possible, then it should have been prevented with minimal countermeasures and security controls in place
    + If there is nothing new in the attack methods or techniques, then it is supposed to be detected with existing tools and techniques.
  + APT Attack Model: How APT Attacks are Made?
    + well planned and highly organized towards increasing the probability of the attack’s success
    + stages 
      + Reconnaissance: One of the first steps attackers take is to learn about their target
      + Establish Foothold: 
        + Exploitation of Known Application Vulnerabilities
        + Malware
        + Spear-Phishing
        + Zero-day vulnerability
        + Web Download
        + Watering-Hole Attack
      + Lateral Movement/Stay Undetected: uses various techniques to access other hosts from a compromised system and get access to sensitive resources
      + Exfiltration/Impediment: export the data they collected to their command & control server
      + Post-Exfiltration/Post-Impediment: keep doing so until the attack has been lifted by the attack sponsor
+ Classification of APT Defense Methods
  + APT defense methods into 3 major categories
  + Monitoring Methods
    + Disk Monitoring
      + monitored for any malicious behavior through anti-virus, firewall, or content-filtering as necessary
      + removing known vulnerabilities that could otherwise spread malware to vulnerable systems within the network
    + Memory Monitoring
      + fileless malware uses a process that is already running within the memory to execute itself
    + Packet Monitoring
      + monitoring at the end system level for any network packets with new destination IP addresses, packets with huge payloads, and large numbers of packets
    + Code Monitoring
      + every code that you release can never be guaranteed to be error-free
      + there is always a possibility of unknown bugs
    + Log Monitoring
      + logs are an important part of not only forensic analysis, but also when used appropriately can help in detecting or even preventing attacks
+ APT Detection Methods
  + Anomaly Detection
    + constitute collecting data from several sources, learning from the collected data, and make predictions on the collected data to estimate and respond to the next possible attack
    + to detect APT, a single anomaly and anomaly detection technique or method will not suffice
    + one of the problems with anomaly detection is the amount of false positives and false negatives, specifically in case of semi-supervised and unsupervised learning methods
  + Pattern Matching
    + old technique that regular intrusion detection and prevention systems employ
    + are correlated using context and correlation rules which are then filtered through detection rules to obtain a set of possible threats
  + Mitigation Methods
    + Reactive Methods
      + Graph Analysis
        + ability to support analysis of complex networks and identifying sophisticated attacks
        + use of a simple metric that measures with a graph how likely a node is to be reached from another arbitrary node
    + Proactive Methods
      + Honeypot and Honeynet Strategies
        + proactive approach such as a deception technology can help them battle against the unknowns and unexpected
        + defenders deceive the attackers by creating baits in the form of decoy documents or creating systems and or networks
      + Moving Target Defense
        + Moving Target Defenses operate by constantly changing the attack surface, and thus attackers can no longer make static and long-term assumptions
+ Evaluation Methodologies of APTs Solutions
  + evaluation of APT attack detection methodologies lacks data sets from realistic attack scenarios, and an easy performance evaluation and comparison
  + second important component is the feature selection, which is a major aspect that affects the results when using machine learning to solve a problem
+ Challenges
  + Determined and Powerful Attackers
    + deterministic nature and the strength of the attackers
    + persistent attackers it all comes down to time and building more advanced and complex tools that could bypass this defense system
  + Long Duration of Attacks
    + APT attacks are often performed over a long duration of time, and while detecting the individual events is one challenge, correlating the events over several months is another
  + Internal Employees
    + are known to be the weakest point in the APT kill chain
    + staff should be educated to not provide any information to outside people unless that is under known and approved procedures
  + Infrastructure-Based Challenges
    + when the environment uses cloud computing resources
+ Research Opportunities
  + Spear-phishing emails, often, have a huge role and impact in an APT attack
  + zero-day vulnerabilities and the exploits using these zero-day vulnerabilities are yet to researched on
  + investigating hacker communities can help to identify the zero-day vulnerabilities before being exploited
  + impact on the APT defense systems is cloud computing


##### Cyber Kill Chains: Strategies & Tactics
+ the cyber kill chain is a security defense model developed to identify and stop sophisticated cyberattacks before they impact an organization
+ the Cyber COBRA approach is a newer tool that you can integrate into a kill chain strategy to provide a more dynamic and contextual assessment of threats
+ What is a kill chain in cybersecurity?
  + security framework designed to identify and stop sophisticated cyberattacks by breaking down the attack into multiple stages
  + allow enterprises to be prepared and stay one step ahead of hackers at every stage of an attack
+ Cyber kill chain vs. MITRE ATT&CK
  + MITRE ATT&CK similarly illustrates the phases of a cyberattack, many of which are similar to the cyber kill chain model
  + Cyber COBRA
    + merging cybersecurity assessment framework designed to provide a more nuanced and dynamic understanding of an organization's security posture
    + developed as a response to the increasingly complex cyber threat landscape, it integrates continuous monitoring and contextual analysis to evaluate risks
+ The 7 stages of a cyber kill chain
  + lockheed’s 7-stage cyber kill chain explores the methodology and motivation of a cybercriminal across the entire attack timeline
    + Reconnaissance: gather information about their target to identify vulnerabilities and potential entry points
    + Weaponization: attackers create malware or malicious payloads to exploit identified weaknesses
    + Delivery: infiltrate the target's network by delivering malware
    + Exploitation: malware is delivered, attackers exploit the target's vulnerabilities
    + Installation: attackers install malware to gain additional control over the network
    + Command and Control: command and control (C2) channel to remotely monitor and guide their deployed cyberweapons
    + Action: involves executing the attack's primary objective
  + Is there an eighth step in the cyber kill chain?
    + some security experts advocate for the inclusion of an eighth stage in cyber kill chains: monetization
    + cyberattacks has become more of an issue in recent times due to the growing use of cryptocurrency
+ Preventing cyberattacks
  + Advanced threat detection tools
  + Regular vulnerability assessments & penetration testing
  + Patch management
  + Network segmentation
  + Multi-factor authentication (MFA)
  + Employee training & awareness programs
  + Incident response planning
  + Behavioral analytics
  + Zero trust architecture
  + Regular data backups
+ Weaknesses in the cyber kill chain
  + Limited attack detection profile
  + No insider threat detection
  + Lack of fexibility
  + Transformative technologies
  + Emerging threats & techniques
+ Alternatives to the original cyber kill chain
  + Unified kill chain
  + Simulation of cyber kill chains

---

#### Collaborative Discussion 1: Peer Response

Hi Chi Fai Wu,
I agree with your assessment of the cybersecurity challenges facing digital enterprises. Vulnerabilities represent a growing threat that will only intensify as more AI tools, such as Project Glasswing (Anthropic, 2026), are deployed to analyze code. Consequently, robust risk analysis will be critical to overcoming these vulnerability hurdles. Additionally, threat actors are leveraging AI to compromise organizations; for instance, several government agencies in Mexico were recently targeted by an adversary using AI agents powered by Claude and ChatGPT (Sela, 2026).
Given that AI is an exceptionally useful tool for scaling operations, it is vital to establish strategic objectives to protect the enterprise (Pospieszny and Brodowicz, 2025). A primary objective must be automation, as the Mean Time to Detect (MTTD), Mean Time to Respond (MTTR), and Mean Time to Patch (MTTP) need to be revised and significantly reduced. This can be achieved through proven tools like Security Orchestration, Automation, and Response (SOAR) platforms with established playbooks, or via an agentic Security Operations Center (SOC). In either case, seamless integration between tools remains critical.


---

#### Reflexion

+ APTs continue to evolve in response to the various defenses we deploy. Furthermore, their operational methods shift based on their geopolitical relationships, especially when their home countries are engaged in cyber warfare or conventional conflict. For instance, during the ongoing Russia-Ukraine conflict, Russian actors have disrupted critical infrastructure, occasionally masquerading as ransomware operators to obscure their origins. Consequently, the traditional boundaries separating hacktivism, cybercrime, and state-sponsored cyber warfare are becoming increasingly blurred. Members of the Cyber Threat Alliance now suggest that identifying the specific perpetrator may be less critical than understanding their objective, as goals often align across diverse adversaries.

---

#### Reading 

+ Anthropic (2026) Project Glasswing: securing critical software for the AI era. Available at: https://www.anthropic.com/glasswing (Accessed: 7 May 2026).
+ Alshamrani, A. et al. (2020) A Survey on Advanced Persistent Threats: Techniques, Solutions, Challenges, and Research Opportunities. IEEE Communications Surveys & Tutorials. [Online] 21 (2), 1851–1877.
+ Kidd, C. (2024) 'Cyber kill chains: strategies & tactics', Splunk Blog, 26 August. Available at: https://www.splunk.com/en_us/blog/learn/cyber-kill-chains.html (Accessed: 8 May 2026).
+ Knapp, E. D. (2024) Industrial Network Security : Securing Critical Infrastructure Networks for Smart Grid, SCADA, and Other Industrial Control Systems. Third edition. Cambridge, MA: Syngress.
+ Orzach, Y. & Khanna, D. (2022) Network Protocols for Security Professionals : Probe and Identify Network-Based Vulnerabilities and Safeguard Against Network Protocol Breaches. First edition. Birmingham, England: Packt Publishing Ltd.
+ Sela, E. (2026) 'A single operator, two AI platforms, nine government agencies: the full technical report', Gambit Security Blog, 10 April. Available at: https://gambit.security/blog-post/a-single-operator-two-ai-platforms-nine-government-agencies-the-full-technical-report (Accessed: 9 May 2026).
+ Pospieszny, P. & Brodowicz, D. P. (2025) Toward Agentic Environments: GenAI and the Convergence of AI , Sustainability, and Human‐Centric Spaces. Sustainable development (Bradford, West Yorkshire, England). [Online]

