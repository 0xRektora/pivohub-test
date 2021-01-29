# HOW TO

Make sure to have make

```
apt-get -y install make
```

Or else check the `Makefile` and look for the corresponding commands

**One liner**

```
git clone --recursive https://github.com/Bloodyline/pivohub-test && cd pivohub-test && make && make logs
```

**Download**

```
git clone --recursive https://github.com/Bloodyline/pivohub-test
```

**Start everything**

```
make
```

**View outputs**

```
make logs
```

**Stop**

```
make stop
```

| URL                               | Service | description                             |
| --------------------------------- | ------- | --------------------------------------- |
| http://localhost:3000             | web     | The main app                            |
| http://localhost:6006             | web_dev | The Storybook app for component testing |
| http://localhost:4000/docs        | api     | Swagger REST API doc                    |
| http://localhost:4000/healthcheck | api     | API server status check                 |
| http://localhost:4000/status      | api     | Express server monitor                  |
| http://localhost:8080             | adminer | Simple web interface for DB management  |

# Notes

The web app is a voting app for beers, it uses the PivoHub API to grab beer data and consume it.
The vote behavior is a "card based game", to remove biases and have an objective point of view, instead of displaying 2 cards and chosing, the user is free to choose one by one, and make a choice for each beer.

The leaderboard contains data about votes that has been made. The user vote is atomic, to simulate a "new" user, just delete the cache and data from Chrome.

Some features and improvements are not present, to satisfy the balance between development time and feature implementation.
