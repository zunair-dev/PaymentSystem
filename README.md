# Payment System

Payment System is a ROR project dealing with merchant & transactions.

## Ruby

ruby-3.0.0

## Rails

Rails 6.1.7

## Running the Project on local Development ENV

run the following command to run the project

```bash
rails s
```

And set the crons jobs env to development in order to run the background jobs on your local.

```bash
whenever --update-crontab --set environment=development
```

That's pretty much it :(
