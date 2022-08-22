Let's build a Food Delivery program for a restaurant!

Here are the first **user actions** of our app:
- As a user, I can add a new meal
- As a user, I can list all the meals
- As a user, I can add a new customer
- As a user, I can list all the customers

**WARNINGS**

The software is designed for **one restaurant only**, so no need to cater (no pun intended 😉) for a multi-restaurant one (e.g. we don't need a `Restaurant` model).

The software is designed for **the restaurant's staff only**, so no need to design a login interface for customers.

Hence, the first components of our software are:
- **Meals**
- **Customers**

## 1 - Meals

### 1.1 - Meal model

Our restaurant sells meals, so we need a way to represent what a meal is.

Each `meal` has an `id`, a `name` and a `price`.

Write some code to implement this and crash-test your model. Then test your code by running `rake meal`.

All green? Good! Time to `git add`, `commit` and `push`.

### 1.2 - Meal repository

Now that we have a model representing our meals, we need a repository to store them.

This repository is initialized with a CSV file path. It reads and writes the meals from the CSV file and holds them as objects in an array. The behavior we want for the repository is to:
- `create` a new meal
- Get `all` the meals
- `find` a specific meal thanks to its id

Write some code to implement this and crash-test your repository. You should create your own `meals.csv` CSV file inside the `data` folder. Then test your code by running `rake meal`.

All green? Good! Time to `git add`, `commit` and `push`.

### 1.3 - Router and app

We haven't launched our app yet. To do this, we need a router and we need to fill in the `app.rb` file.

The router is responsible for displaying the tasks that the user can do and routing the user's choice to the corresponding action of the matching controller. The `app.rb` file is responsible for requiring all the necessary files, instantiating a router and executing its `run` method to launch the app.

Fill in the `router.rb` and `app.rb` files to implement this. If you're stuck, you can go back to the [Cookbook Day 2](https://kitt.lewagon.com/camps/<user.batch_slug>/challenges?path=02-OOP%2F04-Cookbook-Day-Two%2F01-Cookbook-Advanced) and download the solution to get some inspiration. **No need to instantiate the router with a controller** as we don't have it yet. Just print `TODO` for the moment when the user selects a task.

There is no rake for this part. Launch your app by running this command in the terminal:

```bash
ruby app.rb
```

Everything is working? Good! Time to `git add`, `commit` and `push`.

### 1.4 - Meals controller

Let's move to the controller. Here are the **user actions** we want to implement:
- `add` a new meal
- `list` all meals

Remember that the role of the controller is to delegate and coordinate the work to the other components of our app (model, repository and view)!

Start by writing the **pseudocode**, breaking each user action into elementary steps and delegating each step to a component (model, repository or view). Then write the code to implement each step. Create the view and code it step by step.

To test your controller, link it to your app by instantiating it in `app.rb` and passing it to the router. Then you can crash-test your code by launching your app:

```bash
ruby app.rb
```

`rake meal` should also help you go through all these steps. Follow your guide!

Make sure your two meal user actions work before moving on to the next feature.

All green? Good! Time to `git add`, `commit` and `push`.

## 2 - Customers

### 2.1 - Customer model

Our restaurant sells to customers, so we need a way to represent what a customer is.

Each customer has an id, a name and an address.

Write some code to implement this and crash-test your model. Then test your code by running `rake customer`.

All green? Good! Time to `git add`, `commit` and `push`.

### 2.2 - Customer repository

Now that we have a model representing our customers, we need a repository to store them.

This repository is initialized with a CSV file path. It reads/writes the customers from the CSV file and holds them as objects in an array. The behavior we want for the repository is to:
- `create` a new customer
- Get `all` the customers
- `find` a specific customer thanks to its id

Write some code to implement this and crash-test your repository. You should create your own `customers.csv` CSV file inside the `data` folder. Then test your code by running `rake customer`.

All green? Good! Time to `git add`, `commit` and `push`.

### 2.3 - Customers controller

Let's move to the controller. Here are the **user actions** we want to implement:
- `add` a new customer
- `list` all customers

Remember that the role of the controller is to delegate the work to the other components of our app (model, repository and view)!

Start by writing the **pseudocode**, breaking each user action into elementary steps and delegating each step to a component (model, repository or view). Then write the code to implement each step. Create the view and code it step by step.

To test your controller, link it to your app by instantiating it in `app.rb` and passing it to the router. Then you can crash-test your code by launching your app:

```bash
ruby app.rb
```

`rake customer` should also help you go through all these steps. Follow your guide!

Make sure your two customer user actions work before moving on to the next feature.

All green? Good! Time to `git add`, `commit` and `push`.

## 3 - (Optionals)

### 3.1 - Implement `edit` and `destroy` actions for meals and customers

In our app, a user can't edit or destroy an existing meal or customer.

Implement these additional user actions:
- As a user, I can edit an existing meal
- As a user, I can destroy an existing meal
- As a user, I can edit an existing customer
- As a user, I can destroy an existing customer

Done? Time to `git add`, `commit` and `push`.

### 3.2 - Refactor repositories with inheritance

`MealRepository` and `CustomerRepository` have a lot of similarities don't they? In order to stay [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself), we need to define a parent class, `BaseRepository`, which will hold all of the shared behavior and from which `MealRepository` and `CustomerRepository` will inherit.

Write some code to implement this. It's a refactoring process so there is no new test for this part. If your `rake` was all green before, it should be all green after!

Done? Time to `git add`, `commit` and `push`.


## Employees & Orders

Let's add more features to our Food Delivery program!

Here are all the **user actions** of our app:
[ ] As an employee, I can log in
[X] As a manager, I can add a new meal
[X] As a manager, I can list all the meals
[X] As a manager, I can add a new customer
[X] As a manager, I can list all the customers
[ ] As a manager, I can add a new order
[ ] As a manager, I can list all the undelivered orders
[ ] As a rider, I can mark one of my orders as delivered
[ ] As a rider, I list all my undelivered orders

Hence, there are two new components:
- **Employees**
- **Orders**

## 1 - Employees

### 1.1 - Employee model

Our restaurant has two types of employees, **managers** and **riders**. Both have an `id`, a `username` and a `password`, but they have different privileges depending of their `role`.

Write some code to implement this and crash-test your model. Then test your code by running `rake employee`.

All green? Good! Time to `git add`, `commit` and `push`.

### 1.2 - Employee repository

Now that we have a model representing our employees, we need a repository to store them.

This repository is initialized with a CSV file path. It has a **read-only** logic since only the administrator of our app can create accounts (no need for and `add` method). The interface of this repository allows to:
- Get `all_riders` from the repository
- `find` a specific employee thanks to its id
- `find_by_username` a specific employee thanks to their username

Write some code to implement this and crash-test your repository in `irb`. You should create your own `employees.csv` CSV file inside the `data` folder. Then test your code by running `rake employee`.

All green? Good! Time to `git add`, `commit` and `push`.

### 1.3 - Sessions controller

Let's implement a **login** logic in our app.

We want to have two menus in the router: one listing the tasks for managers and one listing the tasks for riders. We also want to route the employee's choice to the corresponding action of the matching controller.

To handle that, we'll introduce the notion of a **session**. At the router level, we'll store the logged-in user in a session.

The sign-in sequence should go like this:

```bash
> username?
paul
> password?
blablabla
Wrong credentials... Try again!
> username?
paul
> password?
secret
Welcome Paul!
```

After signing in, the dashboard that you see should be **dependent on your role**.

Write some code to implement this behavior.

There is no rake for this part. Launch your app by running this command in the terminal:

```bash
ruby app.rb
```

Everything is working? Good! Time to `git add`, `commit` and `push`.

## 2 - Orders

### 2.1 - Order model

Our restaurant takes orders, so we need a way to represent what an order is.

An order is what ties everything together. Each order has an id, a meal, a customer, an employee plus a `delivered` boolean to record whether or not the order has been delivered.

Write some code to implement this and crash-test your model. Then test your code by running `rake order`.

All green? Good! Time to `git add`, `commit` and `push`.

### 2.2 - Order repository

Now that we have a model representing our orders, we need a repository to store them.

This repository is initialized with a CSV file path. It reads/writes the orders from the CSV file and store them in memory. The interface of this repository allows to:
- Create a new order
- Get all the undelivered orders

Since an order has a `meal`, a `customer` and an `employee` **instances**, we also need to initialize our order repository with a meal repository, a customer repository and an employee repository.

Write some code to implement this and crash-test your repository. You should create your own `orders.csv` CSV file inside the `data` folder. Then test your code by running `rake order`.

**Important**: the `order_repository` tests run by `rake` **only work if you define the parameters in `#initialize` in the same order as in the tests**:

```ruby
class OrderRepository
  def initialize(orders_csv_path, meal_repository, customer_repository, employee_repository)
    # [...]
  end

  # [...]
end
```

Also, make sure that your Orders CSV file stores the information with these header names so you can pass the tests:
`id, delivered, meal_id, customer_id, employee_id`

All green? Good! Time to `git add`, `commit` and `push`.

### 2.3 - Orders controller

Let's move to the controller. Here are the **user actions** we want to implement:
- As a manager, I can `add` a new order
- As a manager, I can `list_undelivered_orders`
- As a rider, I `list_my_orders` to list all my undelivered orders
- As a rider, I can `mark_as_delivered` one of my undelivered orders

Remember that the role of the controller is to delegate the work to the other components of our app (models, repositories and views)!

Start by writing the **pseudocode**, breaking each user action into elementary steps and delegating each step to a component (model, repository or views). Then write the code to implement each step. Create the view and code it step by step.

To test your controller, link it to your app by instanciating it in `app.rb` and passing it to the router. Then you can crash-test your code by launching your app:

```bash
ruby app.rb
```

`rake order` should also help you go through all these steps. Follow your guide!

Make sure your four order user actions work before moving on to the next feature.

**Important**: the `orders_controller` tests run by `rake` **only work if you define the parameters in `#initialize` in the same order as in the tests**:

```ruby
class OrdersController
  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    # [...]
  end

  # [...]
end
```

**Important**: since **ids** do not necessarily start from 1 and are not necessarily continuous, let's instead ask the user for **indexes** to improve the user experience.

All green? Good! Time to `git add`, `commit` and `push`.

## 3 - (Optionals)

### 3.1 - Implement `edit` and `destroy` actions for orders

In our app, a manager can't edit or destroy an existing order.

Implement these additional user actions:
- As a manager, I can edit an existing order
- As a manager, I can destroy an existing order

Done? Time to `git add`, `commit` and `push`.

### 3.2 - Hide the user's password

At the moment, a user's password is stored straight in the CSV and is visible to anyone. Is that a good idea? What could we do instead?

Done? Time to `git add`, `commit` and `push`.

You're done with Food Delivery!
