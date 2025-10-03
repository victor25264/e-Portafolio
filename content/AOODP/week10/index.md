---
title: "Test-Driven Development (TDD) and Behaviour Driven Development (BDD)" 
date: 2025-09-28
tags: ["AOODP","OOP","Test-Driven Development"]
author: ["Victor"]
description: "Test-Driven Development (TDD) and Behavior-Driven Development (BDD) are two critical methodologies for developing systems, ensuring quality and confidence in the code." 
summary: "Test-Driven Development (TDD) and Behavior-Driven Development (BDD) are two critical methodologies for developing systems, ensuring quality and confidence in the code." 
cover:
    # image: "paper1.png"
    alt: "Test-Driven Development (TDD) and Behaviour Driven Development (BDD)"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---
#### Test-Driven Development (TDD) and Behaviour Driven Development (BDD)

##### Types of automated testing
+ Black box: implementation details are not known
+ White box: implementation details are completely known
+ Gray box: Implementation details are partially known

##### Testing Pyramid
+ Type of automated tests that should be included

###### Unit tests
+ Should be the most numerous and independent
+ Small testing scope, covering individual functionality
+ Must be robust and fast to execute to scale the number of tests
+ Normally, white box tests

###### Integration tests
+ Test functionality and communication across components like database, APIs, or others
+ Normally, black or gray box tests
+ Security test can be included in this type

###### End-to-end tests
+ Least numerous
+ This can be time-consuming to write, maintain, and execute
+ Involve a large variety of scenarios


##### Test-Driven Development (TDD)
+ The unit tests are created before the actual code, ensuring the code does the necessary to pass the test
+ Ensures that code is verified and proven from the start
+ The process is red (failing test), green (write code to pass test), and refactor (improve and clean code)
+ Test should be done in: arrange (setup test), act (execute test), and assert (verify test pass)


---

#### Reflexion
+ Test-Driven Development (TDD) is a relatively new concept that can be challenging to execute, especially in small projects. However, considering the benefits of future development, it should be used in larger projects when the culture ensures that people can work with this type of methodology. To start, TDD should be introduced gradually, from ensuring good test coverage to switching to TDD as developers become more familiar with it.
---

#### Reading 

+ Simion, A. (2023) Test-driven development in go : a practical guide to writing idiomatic and efficient go tests through real-world examples. 1st ed. Birmingham, England: Packt Publishing.
+ Tibi, A. (2022) Pragmatic Test-Driven Development in C# And . NET : Write Loosely Coupled, Documented, and High-Quality Code with DDD Using Familiar Tools and Libraries. Birmingham: Packt Publishing, Limited.
+ Agbla, E. A. (2024) Mastering Angular Test-Driven Development : Build High-Quality Angular Apps with Step-by-step Instructions and Practical Examples. First edition. Birmingham, England: Packt Publishing.
