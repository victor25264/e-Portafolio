---
title: "Concurrency and Parallelism in Object-Oriented Design" 
date: 2025-09-07
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

#### Individual coding exercise

```python
import uuid
import threading
from concurrent.futures import ThreadPoolExecutor
import random
from unittest import TestCase

class BankAccount:
    """
    BankAccount class
    All the attributes are private as the client must not change the account except with the allowed
    functions:
    Attributes:
        __balance (float): current balance of the account
        __account_id (string): random UUID ensuring it will not be repeated on multiple accounts
        __lock (threading.Lock) lock to ensure modification operations on amount are thread safe
    """
    def __init__(self, initial_balance: float = 0.0):
        """
        Constructor for BankAccount class that sets the required attributes:
        Attributes:
            initial_balance (float): initial balance on the account by defult is 0.0"""
        self.__balance = initial_balance
        self.__account_id = str(uuid.uuid4())
        self.__lock = threading.Lock()

    def deposit(self, amount: float):
        """
        Desposit function that adds the amount passed. __lock ensures that the amount cannot be 
        modified by other threads.      
        """
        with self.__lock:
            if amount > 0:
                self.__balance += amount
                print(f"[{threading.current_thread().name}] Deposited {amount:.2f}.")
            else:
                raise ValueError("Invalid deposit amount.")

    def withdraw(self, amount: float):
        """
        Withdraw function that substracts the amount passed. __lock ensures that the amount cannot
        be modified by other threads.      
        """
        with self.__lock:
            if 0 < amount <= self.__balance:
                self.__balance -= amount
                print(f"[{threading.current_thread().name}] Withdrawn {amount:.2f}.")
            else:
                raise ValueError("Invalid withdrawal amount or insufficient funds.")

    def get_balance(self) -> float:
        """
        get_balance returns balance. It does not use a synchronisation mechanims, it has the risk of
        returning a balance before a transaction happens but based on the way it would work on real 
        application it must not have a lock to display the balance.
        """
        return self.__balance


    def __str__(self):
        return f"BankAccount(ID: {self.__account_id}, Balance: {self.__balance})"
    
    def get_account_id(self) -> str:
        return self.__account_id


class TestBankAccount(TestCase):
    """
    Class for testing and validation of BankAccount
    """
    def test_create(self):
        account_zero = BankAccount()
        account_amount = BankAccount(100)
        self.assertEqual(account_zero.get_balance(), 0, "Error in default BankAccount, not zero balance.")
        self.assertEqual(account_amount.get_balance(), 100, "Error account was not created correctly.")

    def test_deposit(self):
        account_zero = BankAccount()
        account_zero.deposit(100)
        self.assertEqual(account_zero.get_balance(), 100, "Deposit account did not work")
        with self.assertRaises(ValueError) as context:
            account_zero.deposit(-100)
        self.assertTrue("Invalid deposit amount." in str(context.exception), "Error wrong exception")
        

    def test_withdraw(self):
        account = BankAccount(100)
        account.withdraw(20)
        self.assertEqual(account.get_balance(), 80, "Error with withdraw")
        with self.assertRaises(ValueError) as context:
            account.withdraw(-100)
        self.assertTrue("Invalid withdrawal amount or insufficient funds." in str(context.exception), 
                        "Error wrong exception")
        
    def test_unique_identifier(self):
        account = BankAccount()
        second_account = BankAccount()
        self.assertNotEqual(account.get_account_id(), second_account.get_account_id(), "Accounts ID are not" \
        "different")

    def test_class(self):
        self.test_create()
        self.test_deposit()
        self.test_withdraw()
        self.test_unique_identifier()
        print("All BankAccount test passed")

class TransactionSimulator:
    """
    TransactionSimulator class that is used to simulate transaction using multiple threads on a account
    """
    def __init__(self, account: BankAccount):
        self.__account = account

    def __random_transaction(self, random_func=random):
        """
        function that decides on a random transaction for the account with a random amount.
        """
        action = random_func.choice(['withdraw', 'deposit'])
        amount = random_func.randint(10, 200)
        if action == 'deposit':
            self.__account.deposit(amount)
        elif action == 'withdraw':
            self.__account.withdraw(amount)

    def simulate_transactions(self, random_obj = random, threads: int = 5, transactions: int = 10):
        """
        simulation of transaction using multiple threads
        """
        with ThreadPoolExecutor(max_workers=threads) as executor:
            for _ in range(transactions):
                try:
                    future = executor.submit(self.__random_transaction, random_obj)
                    future.result()
                except Exception as e:
                    print(f"Error occurred: {e}")
        print(f"Final Balance: {self.__account.get_balance()}")
    
    def get_balance(self):
        return self.__account.get_balance()

class MockRandomSecond:
    def choice(mock):
        return mock[1]
  
    def randint(mock_first, mock_second):
        return 15
    
class MockRandomFisrt:
    def choice(mock):
        return mock[0]
  
    def randint(mock_first, mock_second):
        return 15

class TestTransactionSimulator(TestCase):
    """
    Class for testing and validation of TransactionSimulator
    """
    def test_simulate_transactions(self):
        account = BankAccount(1000)
        simluator = TransactionSimulator(account)
        transactions=50
        simluator.simulate_transactions(random_obj=MockRandomFisrt, threads=5, transactions=transactions)
        self.assertEqual(simluator.get_balance(), 1000-(transactions*15))
        simluator.simulate_transactions(random_obj=MockRandomSecond, threads=5, transactions=transactions)
        self.assertEqual(simluator.get_balance(), 1000)

        simluator.get_balance()
        pass

if __name__ == "__main__":
    print("=========Test BankAccount Started=========")
    testerAccount = TestBankAccount()
    testerAccount.test_class()

    print("=========Test TransactionSimulator Started=========")
    testerSimulator = TestTransactionSimulator()
    testerSimulator.test_simulate_transactions()

    print("=========TransactionSimulator Started=========")
    account = BankAccount(100.0)
    transactions = TransactionSimulator(account)
    transactions.simulate_transactions(transactions=100)
    print(account)
```


---

#### Reflexion
+ Concurrency and Parallelism can be helpful to reduce the time some tasks take to finish by improving the use of resources of the system. When working with thousands of requests, using concurrency is extremely helpful. Still, using any of these can be tricky and detrimental to the project if we are not mindful of the critical sections and how to distribute the workload.

---

#### Reading 

+ Nguyễn, Q. (2022) Advanced Python Programming : accelerate your python programs using proven techniques and design patterns. Second edition. Birmingham, United Kingdom: Packt Publishing, Limited.
+ McDonald, J. C. (2023) Dead simple Python : idiomatic Python for the impatient programmer. San Francisco, CA: No Starch Press, Inc.
