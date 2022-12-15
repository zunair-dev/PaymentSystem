# Payment System Task

A simple project to manage transactions.

#### Roles we have in App

- Admin
- Merchants

## Environment requirements

To run this project, you will need to add the following libraries to your system

`ruby: 3.0.0`

`rails: 6.1.6`

once you have them on your machine run `bundle install` and all of the project dependencies will be installed.

## Steps to Run the project

#### Database creation

Create make sure you have postgresql installed and provide details of database in file:

```bash
database.yml
```

After that you can create a database and run seed files by

```bash
  rails db:setup
```

once all done you just need to run the project by starting the server

```bash
  rails s
```

## Running Tests

To run tests, run the following command

```bash
  rspec
```
