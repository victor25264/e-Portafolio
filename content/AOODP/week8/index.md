---
title: "Refactoring and Code Smells" 
date: 2025-09-21
tags: ["AOODP","OOP","Desing Patterns", "Refactoring", "Code Smells"]
author: ["Victor"]
description: "Good code is human-readable and easy to maintain. Refactoring is making code more human-readable and maintainable." 
summary: "Good code is human-readable and easy to maintain. Refactoring is making code more human-readable and maintainable." 
cover:
    # image: "paper1.png"
    alt: "Refactoring and Code Smells"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Refactoring and Code Smells

##### Code Smells
+ It is code that is difficult to understand and maintain
+ It is code that teams avoid working with.
+ It is code that is hard to modify because it could break other areas
+ It is hard to test and debug

##### Refactoring
+ According to Clausen and Thomas: "Good code is human-readable and easy to maintain."
+ Refactoring is making code more human-readable and maintainable, but not changing its behavior
+ It helps to maintain consistency, quality, efficiency, and professionalism in the code
+ It favors composition over inheritance to gain more flexibility, speed, and stability

##### Unit Testing
+ Necessary for refactoring, as this ensures that changes did not alter the logic or introduce bugs
+ Typically use the arrange/act/assert
+ It is essential to isolate external dependencies using dependency injection and mocking

---
#### Exercises

##### Discussion Tasks
+ There are many code smells like: magic numbers, long methods, and others that make code less readable and flexible. In the example we worked on, it was obvious that the magic numbers were discounted. However, if the code were more detailed and the instructions were not so closely tied to the code, it would be challenging to get the correct idea. Using constants makes the code more readable, but it is essential to give meaningful names to these constants. On the other hand, long methods that use if-else statements can utilize dependency injection with a strategy pattern to enhance the readability, flexibility, and scalability of the code. This is an excellent example of how using a proven pattern can help solve problems while coding. When I code, I tend to start with simple statements, but as the project grows, I realize that changing or adding more to the code can generate errors. The last part of the book has prompted me to start generating unit tests to improve my code and refactor some critical sections.

---

#### Reflexion
+ Refactoring is a necessary part of software development because it helps clean the code and ensures that we can maintain and scale our codebase. Almost all code can benefit from refactoring. Still, there is a time cost associated with the star,t, but teams must allocate time for refactoring; otherwise, the code will grow, and later changes or feature additions will become complicated. 

---

#### Reading 

+ Clausen, C. & Thomas, M. (2021) Five lines of code : how and when to refactor.
+ Eland, M. & Smith, S. (2023) Refactoring with C# : Safely Improve .NET Applications and Pay down Technical Debt with Visual Studio, .NET 8, and C# 12. First edition. Birmingham, England: Packt Publishing Ltd.
+ Alls, J. (2023) Clean Code with C# : Refactor Your Legacy C# Code Base and Improve Application Performance Using Best Practices. Second edition. Birmingham, England: Packt Publishing Ltd.
