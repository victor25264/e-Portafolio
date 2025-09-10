---
title: "Concurrency and Parallelism in Object-Oriented Design" 
date: 2025-08-7
tags: ["AOODP","OOP","Desing Patterns", "Concurrency", "Parallelism"]
author: ["Victor"]
description: "Concurrency and Parallelism are two important concepts to improve CPU utilization. Still, there are many considerations to use them correctly." 
summary: "Concurrency and Parallelism are two important concepts to improve CPU utilization. Still, there are many considerations to use them correctly." 
cover:
    # image: "paper1.png"
    alt: "Concurrency and Parallelism in Object-Oriented Design"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Concurrency and Parallelism in Object-Oriented Design

##### Concurrency
+ A way to deal with multiple tasks at the same time.
+ Handles other tasks while waiting for other tasks to complete.
+ Extremely useful to deal with IO-bound tasks, like sending and receiving data over the network.
+ Limited to one system process in most Python implementations.

##### Parallelism
+ Technique to separate tasks on separate CPU cores.
+ Multiple processes are used in Python.
+ Some problems are excellent candidates for parallel execution

##### Thread-Safe code
+ Define as code that multiple threads can execute
+ Execution is deterministic.

##### Common concurrency issues and solutions

###### Race Conditions
+ Corrupted output of a program that is indeterminate and dependent on the orders of tasks.
+ Critical sections are parts of a program where threads or processes access shared resources.
+ Hard to detect as there is no error, only incorrect results.
+ Locks help synchronize critical sections and protect data integrity.

###### Deadlocks and Livelocks
+ Deadlocks are a status where locks cause all threads to wait.
+ Livelocks are situations where the threads keep infinitely repeating the same interactions.
+ Lock usage must be mindful to avoid potential circular wait conditions.
+ Forcibly realizing the lock can break the deadlock

###### Starvation
+ It is when a thread waits for the other to finish, and the other never finishes
+ A single thread can starve itself if attempting to use a lock that the threat is already using
+ Rlock implementation can be helpful to avoid single-thread starvation; still, we need to be mindful of its use.


---

#### Reflexion
+ Concurrency and Parallelism can be helpful to reduce the time some tasks take to finish by improving the use of resources of the system. When working with thousands of requests, using concurrency is extremely helpful. Still, using any of these can be tricky and detrimental to the project if we are not mindful of the critical sections and how to distribute the workload.

---

#### Reading 

+ Nguyễn, Q. (2022) Advanced Python Programming : accelerate your python programs using proven techniques and design patterns. Second edition. Birmingham, United Kingdom: Packt Publishing, Limited.
+ McDonald, J. C. (2023) Dead simple Python : idiomatic Python for the impatient programmer. San Francisco, CA: No Starch Press, Inc.
