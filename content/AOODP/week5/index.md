---
title: "Design Patterns III - Behavioural Patterns" 
date: 2025-08-31
tags: ["AOODP","OOP","Desing Patterns", "Behavioural Patterns"]
author: ["Victor"]
description: "Behavioral patterns do not follow a central theme; most patterns in this category present unique ways to solve different scenarios." 
summary: "Behavioral patterns do not follow a central theme; most patterns in this category present unique ways to solve different scenarios." 
cover:
    # image: "paper1.png"
    alt: "Design Patterns III - Behavioural Patterns"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Design Patterns III - Behavioural Patterns
Behavioral patterns do not follow a central theme; most patterns in this category present unique ways to solve different scenarios.


##### Strategy
+ It lets the algorithm vary depending on what the client wants to use. Similar to choosing the strategy to solve a problem
+ It favours composition to supply the implementation to the class, making classes independent of the strategy
+ As more strategies are created, more objects will exist on the application, and users will need to understand each one, or they will get unexpected results

##### Observer
+ Defines a dependency between an observer that is notified when an observable's state changes. The observer then notifies the other objects
+ There are considerations about how an observable subscribes or unsubscribes from the observer
+ Some challenges include possible memory leaks when leaving objects subscribed after they are not needed, notification order is not dependable, and the notification operation is costly with many observers

##### Chain of Responsibility
+ There are several different elements of a system that can process a message one after another.
+ The elements can be added or removed dynamically, or be shuffled or ordered depending on need
+ There is a risk that the message is not processed if there is no element for that message

##### Template Method
+ Uses inheritance to define the steps of an algorithm, delegating some changes to a subclass while maintaining standard functionality
+ Common operations are in a centralized location and allow for control of the algorithms
+ More classes are needed, and clients are not able to directly modify the steps of the algorithm 

##### Command
+ Proposes sending commands instead of interacting through APIs. The commands are objects that encapsulate instructions
+ Decouples the sender and receiver objects, new commands can be added without affecting the systems, and commands can be macros containing sequences of commands
+ The more commands that are needed, the more classes that will be created, and handling errors can be difficult

##### State
+ A simple idea: state controls behavior. Every state is a class with different behaviors
+ It is easy to extend by adding more states and reducing the amount of if-else needed
+ The more states, the more code, and state transitions are not always transparent or predictable

---

#### Exercises

##### Discussion Tasks

###### PaymentProcessor

+ Discussion: Using the stategy pattern allows to separate the algorithm from the class allowing to change this during runtime based on what the client or user needs. For instance, depending on what the costumer select a different class will be processing the payment. Also, now that the algorithm is independant of the class we can add more PaymentType by implementing the same interface pay, making it easier to expand the system.

```Python
from abc import ABC, abstractmethod

class PaymentType(ABC):
    @abstractmethod
    def pay(self, amount):
        pass

class CreditCardPayment(PaymentType):
    def pay(self, amount):
        return f"Paid {amount} using Credit Card."

class PayPalPayment(PaymentType):
    def pay(self, amount):
        return f"Paid {amount} using PayPal."

class BankTransferPayment(PaymentType):
    def pay(self, amount):
        return f"Paid {amount} using Bank Transfer."

class PaymentProcessor:
    def __init__(self, payment_type: PaymentType):
        self._payment_type = payment_type

    def process_payment(self, amount):
        return self._payment_type.pay(amount)

    def set_payment(self, payment_type):
        self._payment_type = payment_type

if __name__ == "__main__":
    credit_card = CreditCardPayment()
    paypal = PayPalPayment()
    bank_transfer = BankTransferPayment()

    processor1 = PaymentProcessor(credit_card)
    print(processor1.process_payment(100))

    processor1.set_payment(paypal)
    print(processor1.process_payment(200))

    processor1.set_payment(bank_transfer)
    print(processor1.process_payment(300))
```

#### Reflexion
+ 

---

#### Reading 

+ Sarcar, V. (2022) Java design patterns : a hands-on experience with real-world examples. Third edition. [Online]. Berkeley, California: Apress.
+ Nesteruk, D. (2022) Design patterns in modern C++20 : reusable approaches for object-oriented software design. Second edition. [Online]. California: Apress.
