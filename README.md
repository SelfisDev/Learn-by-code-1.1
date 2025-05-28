# Learn-by-code-1.1
Learn by Code is a series by Dat One Dev, Where we learn different programming languages by a new perspective. This is source code for part 1 and season 1 of this series. 

#Here is the blogpost which was published on dev.to by dat one dev regarding Learn By Code 1.1


#Welcome to "Learn by Code"!

This is the start of a brand-new series called Learn by Code, where I’ll teach you how to build specific programs while sharing best coding practices along the way

> **"Arise, awake, and stop not until the goal is reached."** – Swami Vivekananda

**What’s This Series About?**

- I’ll pick a programming language.
- We’ll start with simple programs and move towards intermediate-level projects.
- Along the way, I’ll highlight good coding practices to help you improve.

**Understanding the Episode Format**

You might have noticed the title "Learn by Code 1.1"—but what does 1.1 mean?

- 1 = Season 1

- .1 = Part 1 (first episode)

**Season 1**

In the first season of this series, we’ll dive into MiniScript—a lesser-known but incredibly powerful language!

You might be wondering, “Why MiniScript?” Well, I’ve already covered that in detail in this [blog post](https://dev.to/selfish_dev/why-miniscript-13fi). Check it out to see why MiniScript is a fantastic language to start with!

For more details, you can also visit the official [MiniScript](https://miniscript.org/) website.

**VIDEO VERSION OF THIS SERIES ON CHANNEL [SELFISH_DEV](https://www.youtube.com/@SelfishDevYT) SOON**

#CODE

First we will write a bad code then we will convert that bad code into a good code

> **"Mistakes are the first step to learning. Even failure is a step towards success."** – Chanakya

#bad code

```
print "C stands for Celsius"
print "F stands for Fahrenheit"
print "K stands for Kelvin"
unit = input("Unit (C, F, K): ").upper
if unit == "C" then
	C = val(input("Celsius: "))
	F = C * 9 / 5 + 32
	K = C + 273.15
	print K
	print F
else if unit == "F" then
	F = val(input("Fahrenheit: "))
	C = (F - 32) * 5 / 9
	K = C + 273.15
	print C
	print K
else if unit == "K" then
	K = val(input("Kelvin: "))
	C = K - 273.15
	F = C * 9 / 5 + 32
	print C
	print F
else
	print "Invalid"
end if

```

Before we discuss why this code is bad, let's first break down what it actually does and how it works.

Lets use a flowchart to understand this code 

![Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/9ue7utl6lebovz6x51r4.png)

With this flowchart, you should now have a 100% clear understanding of how the code control flow works.

Now lets take a look and simple things in this code which you should try to use

`unit = input("Unit (C, F, K): ").upper`

- It converts a string to uppercase.
- This is useful when handling user input to avoid case sensitivity issues.

If the user enters "c", "f", or "k", the code would previously mark it as invalid (as it expects uppercase letters). But by using .upper(), "c", "f", and "k" all get converted to "C", "F", and "K", ensuring they are properly recognized.

`val()`

In Miniscript, all user inputs are stored as strings by default. This is different from many other programming languages(specifically static typed programming languages) where you specify the input type.

**Strings & Math Operations in Miniscript**
Most languages do not allow mathematical operations on strings—if you try, you'll get an error.

Example (In most languages like Python ect.):

```
print("foot" + "ball")
```

would give a error

But in Miniscript, it works without an issue and prints: `football`

However, this also creates an important problem when dealing with numbers.

**Understanding the Issue**

Imagine we take two user inputs: `1` and `99`
Since `1` and `99` are strings, the output will be: `199`
But if they were integers, the expected output would be: `100`
This unexpected behavior can cause major logic errors in our programs.

**How to fix**

To ensure our math calculations work correctly, we need to convert string inputs into integers using `val()`.

By applying `val()`, Miniscript correctly treats "1" and "99" as numbers instead of strings, avoiding unwanted behavior in mathematical operations.

#Good Code

Now lets see whats the real good version of this same code

```
print "C stands for Celsius"
print "F stands for Fahrenheit"
print "K stands for Kelvin"
unit = input("Enter the unit you would like to enter data in (C, F, or K): ").upper

if unit == "C" then
    C = val(input("Nice, I like people who use Celsius! Enter temperature in °C: "))
    F = C * 9 / 5 + 32
    K = C + 273.15
    print "Temperature in Kelvin: " + K
    print "Temperature in Fahrenheit: " + F
else if unit == "F" then
    F = val(input("Nice, I like people who use Fahrenheit! Enter temperature in °F: "))
    C = (F - 32) * 5 / 9
    K = C + 273.15
    print "Temperature in Celsius: " + C
    print "Temperature in Kelvin: " + K
else if unit == "K" then
    K = val(input("Nice, I like people who use Kelvin! Enter temperature in K: "))
    C = K - 273.15
    F = C * 9 / 5 + 32
    print "Temperature in Celsius: " + C
    print "Temperature in Fahrenheit: " + F
else
    print "Invalid input! Please enter C, F, or K."
end if
```

It does all same thing but takes care of good user experience , readability , maintainability

Lets see how this is good then previous version

- Previous version used `Celcius` which is very straight forward whereas this version uses `Nice, I like people who use Celsius! Enter temperature in °C:` Which is friendly and enhances user experience. 

**Good user prompts improve the experience, making it easier for beginners and non-tech users to understand.**

- New version prints output as `Temperature in Kelvin is 273.15 `(if input of Celsius is 1) however our previous version used to print the output straight forward forcing user to go in confusion which one is kelvin and which is Fahrenheit

**If someone sees 300.15 and 80, they won't know which is which. The first version eliminates confusion.**  

- New version outputs `print "Invalid input! Please enter C, F, or K."` when user enters and invalid unit which is nice way to let user know for any typos but previous version just printed Invalid which is very confusing and one might thing that it is programs error that invalid was output 

Here's a simple and engaging outro for your **Learn by Code** episode:  

---

### **END**  

We started with a **bad code**, analyzed its flaws, and transformed it into a **cleaner, user-friendly version**—just like how every programmer improves over time!  

> **"Every line of code you write today is just a better version of your past self."**  

** Don’t forget to check out the video version on my channel: [Selfish Dev](https://www.youtube.com/@SelfishDevYT)!**  (**SOON**)

 **Got questions?** Drop them in the comments!  

 **Want to learn more?** Follow along for the next episode!  

**See you in the next one—Happy Coding! **
