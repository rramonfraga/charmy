# Charmy, the personal shopper

Project for Hackathon. Application for suggesting different fashion sets to users depending of their preferences.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Before we begin, make sure you have ruby version >=2.2.2 and rails version 5.

```
$ ruby -v # ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin16]
$ rails -v # Rails 5.0.1
```
If your ruby version is not up to date, you can update it with a ruby version manager like rvm.

```
# Using rvm
$ rvm install 2.3.1
# set 2.3.1 as the global version
$ rvm use 2.3.1
```
If your rails version is not up to date, update to the latest version by running:

```
$ gem update rails
```

### Installing

Clone the repo from github

```
$ git clone git@github.com:rramonfraga/charmy.git
```

Make `bundle install` and set all the databases and the seeds

```
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

## Authors

* **Rafael Ramon Fraga** - *Initial work* - [PurpleBooth](https://github.com/rramonfraga)
* **Alejandro Molero Quitana** - *Initial work* - [PurpleBooth](https://github.com/alejandromolero)
* **Fabio Korsos** - *Initial work* -
Designer

## Acknowledgments

Thankfull Inditex and Ironhack for this fantastic Hackathon.
