# Blog Application

![Microverse](https://img.shields.io/badge/Microverse-blueviolet)

> Classic Blog Website

Blog website that shows a list of all posts and empower readers to interact with them by adding comments and liking posts.


## Built With:

- Ruby on Rails
- PostgreSQL

## Getting Started

In order to get a local copy up and running follow these simple example steps.

### Prerequisite

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://gorails.com/)

### Setup

- Make sure you have Ruby on Rails set up properly on your computer.
- Clone or download this repo on your machine.
- Enter the project directory.

### Development Database

```sh
# Create user
sudo -u postgres createuser blog -s

# Create the database
rake db:create


```

### Install

```sh
bundle install

#Install webpacker
rails webpacker:install

```

### Run

```sh
#run migration
rails db:migrate

#run seed
rails db:seed

#run the rails s
rails s
```

### Test

```sh
rspec
```

👤 **Aganze Mataba Henri**

- GitHub: [@hiromataba](https://github.com/hiromataba)
- Twitter: [@twitterhandle](https://twitter.com/MatabaHiro)
- LinkedIn: [Hiro Mataba](https://www.linkedin.com/in/hiro-mataba-1bb910209/)

👤 **Denis Andrei Diaconu**

- GitHub: [@DenisDiaconu](https://github.com/denisdiaconu)
- Twitter: [@DenisAndreiDia1](https://twitter.com/DenisAndreiDia1)
- LinkedIn: [Denis Diaconu](https://www.linkedin.com/in/denis-diaconu-1394091b7/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse

## License

[MIT](./LICENSE)
