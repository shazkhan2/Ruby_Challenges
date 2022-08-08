## Background & Objectives

Emails are the lifeblood of any SaaS (software as a service) business, it is super important to know how to manipulate them programmatically.

On most websites, they are the keys to create an account. If the email is misspelled, the user won't be able to retrieve his password. Also, as a marketer's point of view, you need to communicate with your users and maintain your contact database a reliable dataset of valid emails.

## Story

In this challenge, let's assume you are launching an application in a few weeks. You will notify everyone with a great emailing campaign as soon as your website is online! In the meantime, you prepared a landing page to collect visitors' emails.

## Specs

### Collect valid emails


Your landing page is ready. You want to make sure the visitors submit a valid email.

Code the `valid?` method that returns the right boolean depending on the email's validity:
- Identify the different parts of the email and code a regular expression to match the pattern of a classic email
- Code a simple regex yourself, no need to try and make it perfect (it is impossible to write a perfect regex for emails)!

#### Pattern of an email address

Every email address is the association of a **username** with a **domain name**. It follows the pattern below:

```ruby
    "atmosfeer@karnovgroup.com"
  #  username    domain    tld(top level domain)
```

##### About domain names

The Top Level Domain, also known as TLD is the last group of characters of the domain name, right after the **dot**, and can be chosen from a standard list. A very common one is `.com` for commercial website, but you may have heard about the historical TLDs, like `.net` and `.org`.

Main categories are:
- gTLD: generic top-level domains (such as `.com`, `.net`, `.org`)
- ccTLD: country code top level domain (such as `.dk`, `.se`, `.jp`)

But there are [many more](https://en.wikipedia.org/wiki/List_of_Internet_top-level_domains)

### Clean the database

A few days have passed and your database is already filled with some useful contacts. Your marketing team acquires more data from a professional to broaden the audience. Before launching the emailing campaign, you need clean the database and filter out any invalid email.

Code the `clean_database` method:
- it takes an array of emails
- it returns an array with valid emails only

### Build statistics

Your landing page includes a very simple form to collect only contact emails. You don't know much about your customers but you can infer some informations from the email addresses. You decide to make statistics about TLDs (Top Level Domains). **From now, all the datasets you're working with are already cleaned up for you.**

Code the `group_by_tld` method that returns a Hash with the emails addresses grouped by TLD.

Example:

```ruby
{
  "com" =>	["elon@musk.com"],
  "de" =>	["jurgen@klinsmann.de"],
  "dk" =>	["atmosfeer@ofirmail.dk", "bschristiansen@webnet.dk"]
}
```

### Emailing campaign

You are now working on the email's body and want it to be customised. Starting an email by "Dear customer" doesn't sound good, you'd rather extract the username from the email and start it with "Dear Nick".

Code a `compose_email` method that:
- extracts the username, domain and TLD from the email
- returns a `Hash` formatted as below:

```ruby
{
  username: "atmosfeer",
  domain: "karnovgroup",
  tld: "com"
}
```