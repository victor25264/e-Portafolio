---
title: "SOLID Principles of Object-Oriented Design" 
date: 2025-08-10
tags: ["AOODP","OOP","SOLID"]
author: ["Victor"]
description: "SOLID principles are a great framework to develop scalable, clean, and maintainable applications." 
summary: "SOLID principles are a great framework to develop scalable, clean, and maintainable applications." 
cover:
    # image: "paper1.png"
    alt: "SOLID Principles of Object-Oriented Design"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### SOLID

+ Single Responsibility Principle (SRP): A class should have only one reason to change.
+ Open/Closed Principle (OCP): Software entities should be open for extension but closed for modification.
+ Liskov Substitution Principle (LSP): Subtypes must be substitutable for their base types.
+ Interface Segregation Principle (ISP): Clients should not be forced to depend on interfaces they do not use.
+ Dependency Inversion Principle (DIP): High-level modules should not depend on low-level modules; both should depend on abstractions.

##### Advantages

+ Clean code
+ Maintainable applications 
+ Reusable code
+ Improve code testability
+ Can be applied with known design patterns
+ Streamline team collaboration
+ Many design patterns can be applied in functional languages too


##### Important Note 

+ Can be difficult to avoid over-engineering for simple solutions
+ When technical debt is high, refactoring using these principles has risk, as any change on complex systems (Yanakiev et al., 2025).
+ Refactoring using these principles requires planning to ensure proper prioritization.
+ Rigid adherence can limit pragmatism 

---

#### Exercises

As individuals, design a simple online shopping system that allows users to add products to a cart, calculate the total price, and apply discounts. You will start with poorly designed code by using Python and then refactor it to adhere to the SOLID principles.

Problems with the Initial Code:
+ The Order class handles cart management, total calculation, and payment processing (SRP violation).
+ Adding a new payment method requires modifying the Order class (OCP violation).
+ Tight coupling between Order and payment methods (DIP violation).

##### Task 1: Before

```Python
class Order:
    def __init__(self):
        self.items = []

    def add_item(self, item):
        self.items.append(item)

    def calculate_total(self):
        return sum(item.price for item in self.items)

    def pay(self, payment_type):
        if payment_type == "credit":
            print("Processing credit card payment...")
        elif payment_type == "paypal":
            print("Processing PayPal payment...") #Adding a new method requires modifying this class.
```

##### Task 1: After

```Python
from abc import ABC, abstractmethod

class PaymentMethod(ABC):
    @abstractmethod
    def pay(self, order):
        pass

class CreditCardPayment(PaymentMethod):
    def pay(self, order):
        print("Processing credit card payment...")

class PayPalPayment(PaymentMethod):
    def pay(self, order):
        print("Processing PayPal payment...")

class CryptoPayment(PaymentMethod):
    def pay(self, order):
        print("Processing cryptocurrency payment...")

class Order:
    def __init__(self):
            self.items = []

    def add_item(self, item):
        self.items.append(item)

    def calculate_total(self):
        return sum(item.price for item in self.items)
    

class PaymentProcessor:
    def pay(self, order, payment_method):
        payment_method.pay(order)

```

#### Reflexion
+ The SOLID principles and design patterns reviewed this week can help to design an application that will be able to scale and maintain in the future. One issue I have found when doing scripts for one use only is that it is difficult to maintain when APIs or SDKs change. On the task, using the SOLID principles can be an over-engineered solution, but on more complex systems where multiple components are used, these principles help to get better solutions. I've been applying these principles and some design patterns, and writing code takes more time, but it is easier to expand features. In the long run, using these principles on medium to complex applications will help reduce the time for changes and tests.


---

#### Reading 

+ Sridhar, S. et al. (2023) Python programming. Uttar Pradesh, India: Pearson India Education Services Pvt. Ltd.
+ Marcotte, C.-H. (2022) An atypical asp.net core 6 design patterns guide : a solid adventure into architectural principles and design patterns using .net 6 and c# 10. Second edition. Birmingham, England ; Packt Publishing.
+ Martin, R. C. (2023) Functional design : principles, patterns, and practices. [First edition]. Hoboken, New Jersey: Addison-Wesley.
+ Yanakiev, I. et al. (2025) Applying SOLID principles for the refactoring of legacy code: An experience report. The Journal of systems and software. \[Online\] 220.
