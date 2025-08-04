---
title: "Introduction and Recap of Object-Oriented Programming (OOP)" 
date: 2025-08-03
tags: ["AOODP","OOP","introduction"]
author: ["Victor"]
description: "This week, I reviewed some OOP concepts and learned about advanced class design, which will help me implement new programs more efficiently. Even though the concepts shown are written in Python, I believe they can be applied to other languages." 
summary: "This week, some OOP concepts were reviewed. Advanced class design was introduced, showcasing different optimizations based on the use case." 
cover:
    # image: "paper1.png"
    alt: "Introduction and Recap of Object-Oriented Programming (OOP)"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Object-Oriented Programming (OOP)

Object-oriented programming is a paradigm that uses classes to model problems and behaviors. This approach is well-suited for large and complex applications in various fields.

+ Class: The blueprint that holds the definition of attributes and methods.
+ Objects: Instances of a class with state and behavior based on their attributes.
+ Attributes: Variables declared inside a class.
+ Methods: Functions that handle data and object behavior.

##### Pilars

+ Inheritance
+ Abstraction 
+ Encapsulation
+ Polymorphism

##### Characteristics 

+ Dynamic binding
+ Modularity
+ Reusability of code
+ Flexibility
+ Effective problem solving
+ Security of the data and functionalities

---

#### Exercises

##### Task 1: Basic Class Hierarchy (Inheritance)

```Python
class Vehicle():
    def __init__(self, brand:str, fuel_type:str):
        self.brand = brand
        self.fuel_type= fuel_type

class Car(Vehicle):
    def __init__(self, brand:str, fuel_type:str, num_doors:int):
        super().__init__(brand, fuel_type)
        self.num_doors = num_doors

```

##### Task 2: Polymorphism with Methods

```Python
from abc import ABC, abstractmethod
import math

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

    def __str__(self):
        return f"{self.__class__.__name__} with area: {self.area()}"

class Circle(Shape):
    def __init__(self, radius: float):
        self.radius = radius
    
    def area(self):
        return math.pi * (self.radius ** 2)
    
class Rectangle(Shape):
    def __init__(self, length: float, width: float):
        self.length = length
        self.width = width

    def area(self):
        return self.length * self.width

```

##### Task 3: Encapsulation with Access Control

```Python
class BankAccount:
    def __init__(self, initial_balance: float = 0.0):
        self.__balance = initial_balance

    def deposit(self, amount: float):
        if amount > 0:
            self.__balance += amount
        else:
            raise ValueError("Invalid deposit amount.")

    def withdraw(self, amount: float):
        if 0 < amount <= self.__balance:
            self.__balance -= amount
        else:
            raise ValueError("Invalid withdrawal amount or insufficient funds.")

    def get_balance(self) -> float:
        return self.__balance

```

##### Task 4: Abstraction with Base Class

```Python
from abc import ABC, abstractmethod
class Animal(ABC):
    @abstractmethod
    def make_sound(self):
        pass

class Dog(Animal):
    def make_sound(self):
        return "Woof!"

class Cat(Animal):
    def make_sound(self):
        return "Meow!"

```

##### Task 5: Constructor and Destructor


```Python

class Person:
    def __init__(self, name: str):
        self.name = name

    def __del__(self):
        print(f"Goodbye, {self.name}!")

def out_of_scope():
    person = Person("Pedro")

if __name__ == "__main__":
    person = Person("Juan")

    out_of_scope()
    del person  
```

#### Reflexion
+ OOP is a powerful tool for designing solutions to complex problems, ensuring scalability and maintainability. However, this process requires time to thoroughly understand the problem and define the correct classes, data structures, and designs to be used. Personally, I've observed its effectiveness in large projects; however, this additional time investment can be significant depending on if it is a project or just one script. 


---

#### Reading 

+ [Modern Python Cookbook - Third Edition](https://learning.oreilly.com/library/view/modern-python-cookbook/9781835466384)
+ [Python Programming by Pearson](https://learning.oreilly.com/library/view/python-programming-by/9789357053303/)
