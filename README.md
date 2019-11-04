[![Build Status](https://semaphoreci.com/api/v1/jeduardo824/cajehform-back-end/branches/master/badge.svg)](https://semaphoreci.com/jeduardo824/cajehform-back-end)

# Cajeh Backend
[![Build Status](https://semaphoreci.com/api/v1/jeduardo824/cajehform-back-end/branches/master/badge.svg)](https://semaphoreci.com/jeduardo824/cajehform-back-end)
CajehForm backend repository
## Install

### Clone the repository

```shell
git clone https://github.com/Cajeh/cajeh-backend.git
cd cajeh-backend/cajehform
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.6.3`

If not, install the right ruby version using [asdf](https://github.com/asdf-vm/asdf) (it could take a while):

```shell
asdf install ruby 2.6.3
asdf local ruby 2.6.3
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

```shell
bundle install
```
### Check rails version
```shell
rails -v
```
The ouput should start with something like
`rails 6.0.0`

### Initialize the database

```shell
rails db:create db:migrate
```

### Server

```shell
rails s
```
