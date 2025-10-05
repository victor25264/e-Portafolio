---
title: "Dependency Injection and Inversion of Control (IoC)" 
date: 2025-10-12
tags: ["AOODP","OOP","Dependency Injection", "Inversion of Control (IoC)"]
author: ["Victor"]
description: "Dependency injection is a powerful tool, but developers must consider several key factors when using it." 
summary: "Dependency injection is a powerful tool, but developers must consider several key factors when using it." 
cover:
    # image: "paper1.png"
    alt: "Dependency Injection and Inversion of Control (IoC)"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---
#### Dependency Injection and Inversion of Control (IoC)

##### Dependency Injection
+ Focus on the dependencies on interfaces and have their concrete dependencies used in the component
+ Provides higher modularization and scalability


##### DI considerations
+ Code smells can appear from time to time based on a lack of planning while developing
+ Copy-paste programming can introduce code smells
+ Easier solutions are not always the best solutions and can introduce code smells
+ It should be refactored as any other code

---

#### Exercises

##### Discussion Tasks

###### Refactoring

+ As individuals, refactor a simple Python application to use Dependency Injection (DI) and Inversion of Control (IoC).

+ Solution:

```Python

class NotificationService:
    def notify(user, message):
        pass

class EmailService(NotificationService):
    def notify(user, message):
        print(f"sending using mail to {user}: {message}")

class SMSService(NotificationService):
    def notify(user, message):
        print(f"sending using SMS to {user}: {message}")

class NULLService(NotificationService):
    def notify(user, message):
        print("not sending")


class UserManager:
    def __init__(self):
        pass

    def set_notifier(self, notifier):
        self.notifier = notifier

    def register_user(self, user):
        message = "Welcome!"
        try:
            self.notifier.notify(user, message)
            return True
        except Exception as e:
            return False


class TestUserManager:
    def test_register_user(self):
        user_manager = UserManager()
        null_service = NULLService()
        user_manager.set_notifier(null_service)
        username = "User1"
        message = "Welcome"

        register_true = user_manager.register_user(username, message)
        
        assert register_true == True
```

---

#### Reflexion
+ Dependency injection offers numerous benefits to enhance scalability, modularity, and agility in development. However, as Laigner et al. note, the lack of planning can introduce code smells that negatively impact system performance and maintainability. It is imperative to plan the solution before implementing it or before copying code, as this could introduce code smells. Finally, refactoring is a crucial step in ensuring code quality and should be implemented in all projects. 

---

#### Reading 

+ Taelman, R. et al. (2022) Components.js: Semantic dependency injection. Semantic Web. \[Online\] 14 (1), 135–153.
+ Laigner, R. et al. (2022) Cataloging dependency injection anti-patterns in software systems. The Journal of systems and software. \[Online\] 184.
+ Tuğan, S. (2024) Developing a Web Framework Based on Inversion of Control. The European Journal of Research and Development. 4 (2), .
