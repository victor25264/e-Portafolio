---
title: "Disaster Recovery and Business Continuity" 
date: 2026-03-17
tags: ["DR", "Cloud", "Business continuity"]
author: ["Victor"]
description: "Disaster Recovery and Business Continuity" 
summary: "Disaster recovery and business continuity are critical to avoid operational disruptions. This section explores the different steps for DR and BC." 
cover:
    # image: "paper1.png"
    alt: ""
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Disaster Recovery and Business Continuity

##### Business Continuity and Disaster Recovery (Carson et al., 2024)
+ Introduction to business continuity
  + Left of bang
    + DR planning
    + should have it before the incident
  + BCP is a framework for continuing essential business
  + Reasons:
    + can be difficult to get buy-in, similar to insurance, as it will not be noticed until the issue arises
    + prioritization of information continuity
  + Should ask 
    + what are we trying to protect?
    + what happens if it is down?
  + Business will determine RTO, and RPO must 
  + BCP Teams:
    + Business continuity team: Accountable in every
      + Emergency response team: Responsible for the contact list and media, consulted for testing backups, and informed when cyber threats happen
      + Disaster recovery team: Inform about contact list and media, responsible for testing backups, and consulted for cyber response
      + Cyber incident response team: Informed of contact list, contact media, and testing backups. It is responsible for cyber response
  + Stakeholders:
    + Internal: IT, Information Security, HR, Finance, Legal, Executive sponsor, Facilities, Lines of business
    + External: Vendor, Customer, Investor, Federal
  + Business Impact Analysis:
    + Figure out what high, moderate, or low means for financial impact
    + Identify each critical outward and inward-facing business process
    + determines potential impact from interruption of critical processes
    + Steps:
      + Activities:
        + summarize and use grouping. 
        + Change to the organization. 
        + get vendors, times needed for the function, and other details
      + Train
  + Risk assessment:
    + Process to identify potential hazards
+ Business Continuity Planning
  + identify communication contacts needed using alternative channels
  + primary and alternate leaders, communicate with them as soon as possible
  + list of activities and responsible leaders
  + determine business hours response and after business hours response
  + have a checklist for things or processes needed:
    + services
    + steps
    + resources
  + roles and responsibilities
    + what are the key things we need to cover, and how to assign them
    + Business continuity leader:
      + high enough authority
      + ultimate decision maker, relies on members for tasks specific
      + responsible for directing overall recovery
    + Public relations leader
      + management of interaction with the public and media
      + process media/press inquiries
      + provide internal company communications
    + Business managers
      + provide input into creation and maintenance of BCP
      + ensure all critical processes are part of BCP
    + Company Staff
      + attend training in disaster reaction and specific disaster responsibilities
    + Business continuity management
      + build, test, and update plans
    + Business continuity coordinator
      + coordinates and handles training
    + Information technology infrastructure leader
      + leads IT disaster recovery
  + Communication
    + avoid unnecessary communication, let people work
    + make communication based on the audience
    + have pre-approved template for message
    + employees must not talk to the press, redirect to the public relations manager
    + status report:
      + quick informational report
    + update report:
      + every 1/2 hours
  + Use templates and modify them (FEMA BCP)
  + BCP and the cloud
    + use the Cloud Security Alliance questionnaire
      + standard
      + cover multiple frameworks
  + Key risk indicators (KRIs) and Key performance indicators (KPIs)
    + measure the program
    + understand how things go and where we are
    + KPI:
      + avoid having metrics that are not needed
      + did a table top
      + number of people invited / attended
   + KRI:
      + metrics to ensure working BCP
      + give an idea of risks
+ IT Disaster recovery planning
  + inputs: BCP, RA, P&L, RTO, RPO
  + set goals, scope, and suggestions
  + IT DR Testing:
    + Use: Table tops, backup and restore, failover, failback
    + Methods: functional, load, full
    + should include:
      + test objective
      + schedules
      + written in script or order
      + expected vs real results 
    + document
      + problems, modifications, evidence, and tests at least annually
  + Procedures
    + idea: record video of the process and create a process based on this
    + Core items:
      + operation procedure and responsibilities
      + failover and failback steps
    + update the process when it is needed  

 
---



##### Reflexion

+ Planning is a critical part of every business continuity plan, but testing the plan is equally important. It is dangerous for a DR plan to fail when it is needed, as it will affect business objectives and people's trust in the team doing the recovery. Because of this, assumptions play a pivotal role in DR testing, as they may hide issues that need to be considered. For instance, activating the DR may require logging in via an HTTP console, but in a DR scenario, that may not be possible, which would completely change the process in case of a disaster.

---





---

#### Reading 

+ Carson, R. et al. (2024) Business continuity and disaster recovery. 
