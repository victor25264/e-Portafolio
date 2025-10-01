---
title: "Secure Coding Practices in Object-Oriented Programming" 
date: 2025-08-14
tags: ["AOODP","OOP","Desing Patterns", "Security", "OAUTH"]
author: ["Victor"]
description: "" 
summary: "" 
cover:
    # image: "paper1.png"
    alt: "Secure Coding Practices in Object-Oriented Programming"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Secure Coding Practices in Object-Oriented Programming

##### Injection Attacks
+ Attacks that abuse the lack of input validation to execute code in a different context.
+ Some relevant ones are: SQL injection, Cross-site scripting, and command injection.

##### Cross-Site Request
+ Attacks that abuse that a user is authenticated against a system to send commands or requests without the user knowing
+ There are multiple defenses, like Cross-Origin Resource Sharing and Content Security Policy

##### Password Management
+ Passwords are critical for user and service authentication
+ Developers must hash and salt user passwords using standard and secure libraries on the application
+ Also, on the development system, the service account password must be stored in secure systems for secure and ephemeral interactions like Hashicorp Vault

##### Authentication and authorization
+ For authentication, the application should use multifactor authentication. Usually, a combination of a password and an OTP
+ Biometric authentication can be used, as it is gaining popularity
+ Authorization must ensure the user has the correct permission to interact with the system
+ Role-based authorization and Java Web Tokens are popular for determining permissions

##### OAuth
+ Allows single sign-on using credentials of a trusted provider to make an integrated experience for the user
+ User do not sends their secrets to the application, as the trusted party ensures the validation and authorization of the user

##### Logging
+ From Secure Web Application Development: "Logging and monitoring are essential for spotting and responding to intrusions or intrusion attempts."

---
#### Exercises

##### Discussion Tasks
The implementation presented in this class demonstrates improvements in the application's security by utilizing validators for user and password inputs. Additionally, the lockout helps prevent brute-force attacks; however, we have alternative design choices for this purpose. Additionally, the lack of logging was not presented as a vulnerability, but rather on validation systems, as it is essential to have logging that enables administrators and security operators to ensure there is no ongoing incident. Still, there is room for improvement. 

Using a battle-tested framework like Django for authentication can ensure better performance and security if we use the appropriate modules. Almost all web application frameworks have security features that can protect against injection attacks, brute force, and perform the validations needed. 

However, this also introduces supply chain risk, as if the framework were to have a vulnerability, our application would remain vulnerable until we use the latest version of the framework. Additionally, new attacks have compromised popular libraries in both PyPy and NPM, so we need to exercise caution when using or updating libraries.

---

#### Reflexion
+ Security in application is a complex topic with different costs and benefits. These chapters outline multiple threats and corresponding mitigations that can be employed when developing new applications. Knowing how applications should be designed and what options are available will help me when dealing with incidents and when developing and suggesting best practices for systems.

---

#### Reading 

+ Baker, M. (2022) Secure Web Application Development : A Hands-On Guide with Python and Django. 1st ed. 2022. [Online]. Berkeley, CA: Apress.
+ Shah, M. (2023) Cloud native software security handbook : unleash the power of cloud native tools for robust security in modern applications. 1st ed. Birmingham, England: Packt Publishing Ltd.
+ Lakshmanan, R. (2025) 20 popular NPM packages with 2 billion weekly downloads compromised in supply chain attack, The Hacker News. Available at: https://thehackernews.com/2025/09/20-popular-npm-packages-with-2-billion.html (Accessed: 21 September 2025). 