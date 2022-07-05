## Background and Objectives

```bash
  cd ~/karnov-ruby-challenges/sweet-02-happy-numbers
  rake
  code .
```

A happy number is a very special number, that fulfills this criteria:

- First, you take the sum of all its digits.
- Second, you reverse that sum's digits
- Third, you multiply the sum with its reverse
- If the the result of that multiplication is equal to the number, the number is a happy number.

The description of what a program does in plain English is called **pseudocode**. Writing pseudocode before starting coding is highly recommended, especially for complex tasks that require many steps.

The bullet list above is an example of pseudocode. It's very important to go over the pseudocode in your challenges and make sure you understand what it does.

It's not easy to read instructions like these and digest them into code. So let's check out a couple of examples.

For the number `1729`

- Step 1: the sum of its digits is `1 + 7 + 2 + 9`, so `19`
- Step 2: the reverse of that sum is `91`
- Step 3: the multiplication of the sum with its reverse is `19 * 91`, so `1729`
- Since the result of step 3 is the same as the original number, it is a happy number

For the number 13458:

- Step 1: the sum of its digits is `1 + 3 + 4 + 5 + 8`, so `21`
- Step 2: the reverse of that sum is `12`
- Step 3: the multiplication of the sum with its reverse is `21 * 12`, so `252`
- Since the result of step 3 is **not** the same as the original number, it is **NOT** a happy number. It might even be a sad one.

## Specs

### happy_number?

- This method should just check whether the input number is happy or not.

## Key Takeaways

Ask yourself these questions:

### Syntax
* How does the pseudocode translate to the final solution?
* How would you write your own pseudocode for this assignment
* What are all the data types you had to use for this assignment?
