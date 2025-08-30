---
title: "Design Patterns II - Structural Patterns" 
date: 2025-08-24
tags: ["AOODP","OOP","Desing Patterns", "Structural Patterns"]
author: ["Victor"]
description: "Structural patterns help manage relationships between objects, from reducing memory usage to developing functionality without changing existing classes." 
summary: "Structural patterns help manage relationships between objects, from reducing memory usage to developing functionality without changing existing classes." 
cover:
    # image: "paper1.png"
    alt: "Design Patterns II - Structural Patterns"
    relative: true
editPost:
    URL: "https://github.com/victor25264/e-Portafolio"
    Text: "Victor's E-portafolio"

---

---

#### Design Patterns II - Structural Patterns
Structural patterns help manage relationships between objects, from reducing memory usage to developing functionality without changing existing classes. Because of this, functionality can be added, removed, or altered in classes safely maintaining separation of concerns and loose coupling. 

##### Adapter
+ Makes it possible to use a new implementation without changing the client or interface
+ The adapter wraps the implementation and plugs it into the client without change
+ It can be helpful to use legacy systems that cannot be changed but are stable and straightforward.

##### Bridge
+ Also known as the Handle/Body pattern. You can decouple an implementation class from an abstract class
+ Helps to make the concrete class functionally independent of the interface implementer classes
+ It can be effective to maintain different hierarchies where both of them can be extended

##### Composite
+ Let's clients treat objects and compositions of objects uniformly
+ In tree-like structures, can treat both branch nodes and leaf nodes uniformly
+ The more nodes are added, the more complex the maintenance becomes

##### Decorator
+ It adds functionality to the object at runtime as different decorators are applied
+ Helpful when needing to add new functionality without modifying the existing classes
+ Promotes classes with a single responsibility, as this makes the decorator pattern more efficient

##### Facade
+ Promotes loose coupling and abstraction to hide complex implementation by exposing a simple interface
+ It provides an access point to various methods across multiple classes in a structured manner
+ Adds more code and work to maintain in case of changes in the subsystems

##### Proxy
+ It helps to control access to the object and add more functionality without changing a client's interaction
+ Follows the open/close principle as both subject and client are closed for modification, but this pattern allows adding functionality
+ Depending on the case, it can add response time and make it difficult to debug

##### Flyweight
+ It is useful when generating large quantities of objects that share values or properties
+ It helps reduce the memory consumption and maintain virtual objects
+ It needs more time to configure, which can impact the performance, and it can be tricky to debug

---

#### Exercises

##### Discussion Tasks

###### Adapter

+ Solution: The adapter pattern helps standardize the different classes. In this case, we can wrap the old API in the adapter class and ensure that it also uses the same interface as the other payment classes.

```Python
from abc import ABC, abstractmethod

class PayApiLegacySOAP():
    def __init__(self):
        pass

    def pay_legacy(self, xml):
        print("Paying with SOAP: ", xml)
        return True

class JsonAPI(ABC):
    @abstractmethod
    def pay(self, data):
        pass

class PayCarREST(JsonAPI):
    def __init__(self):
        pass

    def pay(self, amount):
        print("Paying card with REST: ", amount)
        return True

class PayCashREST(JsonAPI):
    def __init__(self):
        pass

    def pay(self, amount):
        print("Paying cash with REST: ", amount)
        return True

class PayApiLegacySOAPAdapter(JsonAPI):
    def __init__(self, legacy_soap):
        self.legacy_soap = legacy_soap

    def pay(self, amount):
        apdated_xml = self.adapt_json_xml(amount)
        return self.legacy_soap.pay_legacy(apdated_xml)

```

###### Bridge

+ Solution: Bridge pattern separates the class from the implementation, allowing for multiple hierarchies of objects. Also helps reduce the amount of inheritance between classes, favoring composition over inheritance.

```Python
from abc import ABC, abstractmethod

class RemoteControl(ABC):
    def __init__(self, device):
        self._device = device

    @abstractmethod
    def turn_on(self):
        pass

    @abstractmethod
    def turn_off(self):
        pass

class Device(ABC):
    @abstractmethod
    def turn_on(self):
        pass

    @abstractmethod
    def turn_off(self):
        pass

class TV(Device):
    def turn_on(self):
        return "TV is now on."  
    
    def turn_off(self):
        return "TV is now off."

class Radio(Device):
    def turn_on(self):
        return "Radio is now on."

    def turn_off(self):
        return "Radio is now off."

class BasicRemoteControl(RemoteControl):
    def turn_on(self):
        return f"{self._device.turn_on()} Basic turning on the device."

    def turn_off(self):
        return f"{self._device.turn_off()} Basic turning off the device."

class AdvancedRemoteControl(RemoteControl):
    def turn_on(self):
        return f"{self._device.turn_on()} Advance turning on the device."

    def turn_off(self):
        return f"{self._device.turn_off()} Advance turning off the device."

    def activate_feature(self):
        return f"{self._device.__class__.__name__} activating advanced feature on the device."

```


###### Composite

+ Solution: The Composite pattern is effective on tree-like structures, such as the filesystem implementation. Using this, we can add functionality to the file nodes without needing to modify the directory class.

```Python

class FileSystemComponent():
    def __init__(self, name: str):
        self.name = name
        
class File(FileSystemComponent):
    def __init__(self, name: str, size: int):
        super().__init__(name)
        self.size = size

    def get_size(self) -> int:
        return self.size

class Folder(FileSystemComponent):
    def __init__(self, name: str):
        super().__init__(name)
        self.children = []

    def add(self, component: FileSystemComponent):
        self.children.append(component)

    def get_size(self) -> int:
        total_size = 0
        for child in self.children:
            total_size += child.get_size()
        return total_size

```

#### Reflexion
+ This week's patterns show practical ways to modify or add functionality in a maintainable way. Still, many of these patterns can add complexity to the code base, making it difficult to debug or understand. There is a need to plan before even starting to code, because without a plan, it will be challenging to select the best pattern or approach to solve the problem, resulting in unnecessarily complex or difficult-to-modify code.


---

#### Reading 

+ Sarcar, V. (2022) Java design patterns : a hands-on experience with real-world examples. Third edition. [Online]. Berkeley, California: Apress.
+ Francesco, H. D. (2024) JavaScript Design Patterns : Deliver Fast and Efficient Production-Grade JavaScript Applications at Scale. First edition. Birmingham, England: Packt Publishing.