## Background & Objectives

SQLite is a simple database that relies on a standalone file. You can read more on [en.wikipedia.org/wiki/SQLite](http://en.wikipedia.org/wiki/SQLite).

The goal of this first exercise is to use the command line to read and query a sample database called `jukebox.sqlite` that we give you.

To complete the challenge, draw the DB schema on [db.lewagon.com](https://ondras.zarovi.cz/sql/demo/), save it as an XML file and run `rake`!

### Setup

Download and install [DB Browser for SQLite](https://sqlitebrowser.org/dl/), if you haven't already.

You can open the database provided by opening it in with this program. It will allow you to browse the database and run any SQL queries you want.

## Tools

You can also use the [VS Code SQLite extension](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite) to read the SQLite database, explore the schema and even **run SQL queries**.

### VS Code SQLite extension - Exploring the database

There are different commands you can use with this extension to explore and interact with your sqlite database. To start typing commands remember to open your command palette by pressing `Cmd / Ctrl` + `Shift` + `p`. You should see a little text box in your editor where you can type any command you want. To explore the database, we are going to run the `Open Database` command by following these steps:

- Open your command palette with `Cmd / Ctrl` + `Shift` + `p`.
- Type in `SQLite: Open Database`
- Click on the database path pointing to your database

You should see the `SQL EXPLORER` tab with your database loaded! Now you can open your database and explore all the existing tables! You can also click on the `triangle icon` to have a more visual representation of your tables 🙌 Try it on the `tracks` table!

## Specs

The goal of this exercise is to explore the Jukebox database, and understand its schema. Answer the following questions:
- What is the database schema? (i.e what are the tables, and the relations between tables)
- Use SQL Design tool to draw the schema of this database.
- How many rows does each table contain? What are the column names for each table?

Use [SQL Designer](https://ondras.zarovi.cz/sql/demo/) to draw the Jukebox schema. Save it in XML format to `jukebox.xml` and check it with `rake`.
