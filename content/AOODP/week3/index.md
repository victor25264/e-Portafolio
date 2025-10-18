---
title: "Design Patterns I - Creational Patterns" 
date: 2025-08-17
tags: ["AOODP","OOP","Desing Patterns", "Creational Patterns"]
author: ["Victor"]
description: "Creational patterns are effective design patterns for creating dynamic objects in various scenarios." 
summary: "Creational patterns are effective design patterns for creating dynamic objects in various scenarios." 
cover:
    # image: "paper1.png"
    alt: "Design Patterns I - Creational Patterns"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Design Patterns I - Creational Patterns
Design patters are proven solutions to common software design problems. Creational patterns provide flexible and reusable solution for creating objects. They promote flexibility, reusability, and scalability.

##### Singleton
+ Ensures the class has only one instance and provides a global point of access to it.
+ Similar to a global variable.
+ Provides control over the allocation and destruction of the object.
+ Avoids nondeterministic initialization problem of nonlocal static constructors.

##### Factory Method 
+ Defines an interface for creating an object, but lets subclasses decide which class to initiate.
+ Create without having to specify the specific type of object to create.
+ Decuples the code, it separates the classes from the existing architecture.

##### Builder
+ Separates the constrution of the complex object from it representation.
+ Client direct the builder to build the objects step by step.
+ The same construction process can produce different objects

##### Prototype
+ Specifies the kinds of objects to create using a prototypical instance and creates objects copying this prototype.
+ Avoids the expense of creating a new instance.
+ Depending on the case it can reduce the memory or time needed to create a object

##### Abstract Factory
+ Provides an interface for creating families of related or dependent objects
+ It allows to create a concrete factory and then a object using the factory
+ It can add unnecessary complexity and extra work.
---

#### Exercises

##### Task 1: Basic Class Hierarchy (Inheritance)

```Python
from abc import ABC, abstractmethod

class Car(ABC):
    @abstractmethod
    def drive(self):
        pass

class Sedan(Car):
    def drive(self):
        print("Driving a sedan")

class SUV(Car):
    def drive(self):
        print("Driving an SUV")

class Hatchback(Car):
    def drive(self):
        print("Driving a hatchback")
    
class CarFactory(ABC):
    @abstractmethod
    def create_car(self):
        pass

class SedanFactory(CarFactory):
    def create_car(self):
        return Sedan()
    
class SUVFactory(CarFactory):
    def create_car(self):
        return SUV()

class HatchbackFactory(CarFactory):
    def create_car(self):
        return Hatchback()

if __name__ == "__main__":
    sedan_factory = SedanFactory()
    suv_factory = SUVFactory()
    hatchback_factory = HatchbackFactory()

    sedan = sedan_factory.create_car()
    suv = suv_factory.create_car()
    hatchback = hatchback_factory.create_car()

    sedan.drive()
    suv.drive()
    hatchback.drive()

```

#### Reflexion
+ Creational patterns can be beneficial for dynamically creating objects in various scenarios. They add complexity, and on a new project, having to decide which pattern can be complicated, as the more abstract patterns can add more complexity than is needed. To properly use these patterns, there must be well-defined requirements; otherwise, we may end up adding more complexity or not utilizing a pattern that is effective for the given scenario.


---

#### Reading 

+ Sarcar, V. (2022) Java design patterns : a hands-on experience with real-world examples. Third edition. [Online]. Berkeley, California: Apress.
+ Reddy, M. (2024) API Design for C++. 2nd ed. San Diego: Elsevier Science & Technology.
