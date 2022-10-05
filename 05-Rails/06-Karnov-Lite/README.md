## Karnov Lite

This week, you will build a light version of our [customer facing app](https://pro.karnovgroup.dk).

### Part I

#### 1 - Introduction

We will try and emulate the kind of architecture used in the [pro repo](https://github.com/karnov/pro), which means there will be a few key differences between the kinds of Rails apps you've made so far, and this one.

- Even if the document can be considered a core data model of the app, you will not store document content in your DB, which means you will not have an Active Record model named `Document`
- Instead, you'll be using the [Document Service API](https://github.com/karnov/document-service/) to fetch document data. Chris has graciously spun a dedicated instance of Document Service for you, so you can play around with it as much as you want.
- Each controller action will have an associated Action class(e.g. `DocumentShowAction`) in the `app/actions` folder, which will do all the logic you've put in controllers so far.

#### 2 - User Journeys

**Document Browsing**:

- As a user, I can search for the document I want.
- As a user, I can see the list of my search results.
- As a user, I can click on the document that seems the most relevant and read it.

**Document Favorites**:
- As a user, I can mark a document as a favorite
- As a user, I can see a list of all my favorite documents

#### 3 - Constraints

To make your life easier, let's reduce the scope on several parameters:

- Only consider Danish Documents (every api call should be to DK only)
- Ignore books as a document type (books are a more complicated document type)
- When displaying a document's content, display just the first

#### 3 - Database Schema

Your app will still implement a login

Draw your database schema using [the DB Schema Designer](https://ondras.zarovi.cz/sql/demo/) and ping a teacher to validate. Draw only the minimum viable for your app to work. Use the right naming conventions!

#### 3 - Routes

Go back to your User stories and add the following information:

- Route: Verb + Path
- Action
- Controller

Create a ticket to validate them with a teacher. All good? Time for the `rails new`!

### Part II

Before splitting the tasks among the team, set your project up together. Assign a GitHub Lead (and only him/her) should:

#### 1. Create the Rails project with a Postgres config

```bash
cd ~
rails new \
  -d postgresql \
  CHANGE_THIS_TO_YOUR_RAILS_APP_NAME
```

Again, only the **GitHub lead** will do this! Not everyone in the team...

#### 2. Push the project on Github

```bash
cd rails-airbnb-clone
gh repo create --public --source=.
git push origin master
```

#### 3. Add your team mates as collaborators on the Github repo

Go to [your Github repo settings](https://github.com/<user.github_nickname>/rails-airbnb-clone/settings/collaboration) and add your teammates as **collaborators** to the repo.

The other teammates can now **clone** the project. ⚠️**Be careful, use `SSH` URL**⚠️

Then, the teammates should run:

```bash
bundle install
rails db:create db:migrate
```

#### 4. Deployment

On Wednesday we'll take a look at how we can deploy the app online as well.

### Some guidelines for project management

#### Kick-off

When trying to split work in your team, you'll realize that many tasks depend on other ones... How to integrate facebook connect if there is no `User` model? How to implement bookings if there is no `Flat` model? Here are some guidelines to help you organize your work:

You must always start with the **core models** in your app that all future features will depend on. In Airbnb's case, they are clearly `User` and `Flat`. Once these models are integrated, it becomes easier to split work on remaining features. As a kick-off phase, you can do these tasks together and then split up the work:

**Model kick-start**:
- Integrate `User` with Devise signin/signup
- Integrate `Flat` with listing (`index`) and creation (`new/create`)

#### Tasks organization

Here is a list of different user stories to implement on the Airbnb project:

- As a user, I can navigate on the website from the navbar (with functional links, e.g. "signin/signout", "My bookings", "Publish a listing", etc.)
- As a user, I can view a flat's page
- As a user, I can book a flat
- As a user, I can add pictures for my flat
- As a user, I can add reviews for a flat I've stayed in
- As a user, I can locate flats on a map
- As a user, I can log in with Facebook
- As a user, I can receive an email when someone books my flat
- ...

**Some of these features are more important than others**. It's your role to prioritize them to get an MVP at the end of the week!

#### Feature example: Book a flat

When you work on a feature, work on it **conscientiously from the database to the HTML/CSS**. Let's take the example of the "booking" feature:

*Model*
- I will create a `Booking` model and its associated migration.
- Then I will write a working model with associations and validations.
- I will then crash-test my model from the `rails console` to make sure everything in the model works.

*Routing*:
- I will add bookings routes in `routes.rb`

*Controller*:
- I will create a new `BookingsController` with the `create` and `index` actions.
- I will implement these two actions.

*Views modification*:
- I will embed the booking form in the existing `views/flats/show.html.erb`
- I will list all current user's bookings on a new page `views/bookings/index.html.erb`.

*Links*:
- I will add a link to the `bookings#index`page in the navbar.

*HTML/CSS*:
- The form contains all the fields it needs
- The params are passed to the controller correctly when the form is submitted.
- Take time to refactor the HTML using partials if my HTML code is too long and hard to read.

**Code it perfectly, from model to view**

- Crash test all your model associations and validations in the rails console.
- Use partials to refactor your HTML and make it more readable and maintainable.
- It's OK that your final MVP doesn't look like a million bucks. It doesn't hurt that it looks nice, but you're better off spending time on features than spending days on pixel perfect design.
