## Airbnb Week

You will spend this week working on an Airbnb clone as a group project (anything but apartments!).

### Part I

Start with the schema and validate with Nick or Cameron. You will save a lot of time by doing this, trust us.

#### 1 - User stories

Start by thinking of the core **user journeys** you will showcase during the demo. There are lots of possible use cases for a product like Airbnb, but try to narrow them down to the minimum viable journeys to make it work.

A User Journey is a series of User Stories relevant for a particular user to do something he/she wants to do. Fx. at Karnov, a user journey could look like this:

- As a user, I want to search for the latest version of a given Danish law.
- As a user, I want to read that law
- As a user, I want to be able to look up Karnov Notes of any given paragraph that I want.
- etc...

It's a little bit weird with phrases starting by `As a user`, but it makes more sense if we think of other examples, like `As an admin`, `As an apartment owner` or `As a logged in user`. Using this phrasing will make it easier to map out your features.

There's 3 main user journeys you need to think about.

<details><summary markdown='span'>View solution
</summary>

- 1 user journey for the user creating an offer
- 1 user journey for the user booking an offer
- 1 user journey for the owner accepting or declining a booking request

</details>

Each user journey contains several **user stories**: write them down on actual paper or digitally by using the right terminology. When you're done, ping Nick or Cameron to have them validated.

You can draw quick sketches with a pen and paper of the different screens and the rough elements they contain. This will help you visualize your user journeys. Be careful, no need to be too specific at this point! This is a sprint, you need to allocate your time and resources wisely.

#### 2 - Database Scheme

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
