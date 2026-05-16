---
title: "Vulnerability Assessments" 
date: 2026-05-07
tags: ["Vulnerability management"]
author: ["Victor"]
description: "Vulnerability assessments are essential for a comprehensive risk assessment" 
summary: "Vulnerability assessments are essential for a comprehensive risk assessment" 
cover:
    # image: "paper1.png"
    alt: "Vulnerability Assessments"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Vulnerability Assessments
+ Vulnerability Assessment Continuum
  + vulnerability: 
    + weakness in an information system, system security procedures, internal controls, or implementation that could be exploited or triggered by a threat source
  + pen test:
    + method for gaining assurance in the security of an IT system by attempting to breach some or all of that system's security, using the same tools and techniques as an adversary might
  + vulnerability assessment should be regularly executed
  + pen test should be seen as an audit of this specification, ensuring that it is still current and that new vulnerabilities have not appeared
+ Asset ID and Analysis Audit
  + Assets:
    + Human
      + often the weakest link
      + social media has make easier social engineering
    + Web
      + virtual 'storefront' of the business
      + carries with them their own vulnerabilities and challenges for security
      +  often be scanned by vulnerability scanning tools 
    + Physical
      + harder to attack because they would usually 
be kept behind the firewall used to protect the main office
      + keeping such devices updated and 
securely locked cannot be over-emphasised,
+ Scanning Policies
  + Scanning policies should include assets to scan, IPs and ports to be included, and an indicative list of tools to utilise
  + types:
    + externals
    + internals
  + number and frequency of scans will depend very much on the purpose of the scan
  + care must be taken during normal business hours to avoid business disruption
+ Identify Required Scans and Tools
  + better to use tools that can scan at higher levels of the network stack when dealing with shared hosting sites
  + Host Scan Tools:
    + IDS
      + most common tool deployed when scanning or auditing a host platform is a host-based intrusion detection system
      + HIDS operate by creating a hash of key system files or objects
      + NIDS often use externally managed databases of signatures to detect and track network intrusion attempts
    + Hardware audits
      + often carried out by network-based tools
      + most common is Microsoft Configuration Manager 
    + Log Analysis
      + final aspect of host scanning is log analysis and auditing
  + Wireless Scan Tools:
    + Kismet
      + most flexible of the wireless scanning and auditing tools
    + Aircrack-ng
      + designed to capture and extract keys and passphrases from encrypted wireless traffic
    + Application Scanning/Management Tools
      + Microsoft configuration manager
      + AppArmor which "provides MAC functionality to Linux and is used to supplement the traditional DAC (file permissions) functionality that the OS provides."
  + Packet Diagnostic and Analysis Tools:
    + TCPDump 
      + captures TCP/IP packets on a nominated interface 
      + can display traffic either on the console or capture packets and write them to a file
    + Wireshark 
      +  similar function to TCPDump except it is a GUI based tool
  + Vulnerability and Port Scanners:
    + nmap
      + command line based scanning tool
      + sually used for service and OS discovery as part of a vulnerability scan
    + Nessus
      + commercial vulnerability scanne
    + OpenVAS 
      + open-source tool, based on the same core as Nessus
      + designed to be controlled by the host machine
      + presence of a data feed that contains information about known vulnerabilities and how to detect them
+ Configuration and Expectations
  + the time that a scan is carried out can have a significant impact on the results
  + a scan should be designed to identify the platform, its operating system and any middleware and/or frameworks in use
  + any differences between expected and obtained results should be catalogued, investigated, and where possible explained
+ Scanning, Risks and Evaluation
  + Pseudo DoS Attack
    + an aggressive, multithreaded scan may seem like a denial of service (DoS) attack on the system being assessed
    + may be necessary to run a pilot scan out of hours to assess the negative effect of any scans
  + Effect on IPS/IDS Systems
    + vulnerability scans/assessments may set off an intrusion detection/prevention system if installed
    + team that monitors it should be alerted as part of the preparation for scanning, so they tag any alerts as being caused by the scans
    + monitoring team may temporarily disable the IDS/IPS or, alternatively, use the scans as an opportunity to test and calibrate the system
+ Present and Interpret Scan Results
  + results should be ranked based on both technical and business priorities
    + priorities include the risk to the business
  + vulnerability that results in a lack of encryption, or decryption of certain resources may be ranked lower
  + business perspective, these rankings may be very different
    + due to the fines that could be incurred by breaching regulations such as the European GDPR
  + should also include a discussion on the cost and ease of remediation
  + basic risk analysis should also be included that covers the probability/possibility that a vulnerability could be exploited
  + results are produced, remember to make the presentation as engaging and as easy to understand as possible
+ Create a Remediation/Mitigation Plan
  + final step is to create a remediation/mitigation plan
  + done carefully and judiciously, involving all stakeholders but especially in co-operation with the business IT team
  + create a deployment plan with the IT department
  + Schedule mitigations to be deployed
  + ensure that the system is retested and capture the results to 
demonstrate that the proposed solution
+ Evolution of Firewalls
  + most well-known security devices/appliances in use today
  + firewall is a filter that sits between a trusted zone (e.g. a LAN) and an untrusted zone (e.g. the Internet)
  + monitors and filters the packets sent between them, based on a set of rules
  + check with any firewall deployment
    + have a strong password that is NOT the default one provided
    + have security certificates installed and enabled for ALL communications
    + configuration been checked and backed up
    + regularly patched
    +  have a UPS (uninterruptible Power Supply) and a failure alarm
    + logging enabled and either regularly checked and backed up or routed to a SIEM



---

#### Scanning Activities
+ How many hops from your machine to your assigned website?
  + 14 hops 
+ Which step causes the biggest delay in the route? What is the average duration of that delay?
  + 5.53.6.143 between 65 ms
+ What are the main nameservers for the website?
  + ns1.softwaregrp.com. and ns3.softwaregrp.com.
+ Who is the registered contact?
  + It is protected information
+ What is the MX record for the website?
  + No
+ Where is the website hosted?
  + It is hosted on AWS
+ Did you have any issues or challenges with the scans?
  + Yes, the ICMP traffic is blocked
+ How did you overcome them?
  + I used tcptraceroute to do a tcp traceroute
+ How will they affect your final report?
  + I consider this can help me understand the latency for the other scans I will use


---

#### Reflexion

+ Vulnerability scanning tools, such as Nessus, simplify the assessment process by automating discovery and generating high-level reports. However, this data often lacks the critical information required for an effective vulnerability management strategy. Business context and threat intelligence provide this essential input. Unfortunately, acquiring such insights can be costly, and rigid compliance frameworks may limit a company's flexibility regarding patching priorities.

---

#### Reading 

+ Lachkov, P. et al. (2022) Vulnerability Assessment for Applications Security Through Penetration Simulation and Testing. Journal of web engineering. [Online] 21 (7), 2187.
+ Orzach, Y. & Khanna, D. (2022) Network Protocols for Security Professionals : Probe and Identify Network-Based Vulnerabilities and Safeguard Against Network Protocol Breaches. First edition. Birmingham, England: Packt Publishing Ltd.
