# Development

## Setup

```sh
$ ./bin/bundle install
$ cp env.example .env
$ ./bin/rails db:prepare
$ ./bin/rails server
```

## Packages Maintenance

```sh
$ ./bin/bundle outdated
$ ./bin/importmap outdated
```

```sh
$ ./bin/bundle audit
$ ./bin/importmap audit
```

```sh
$ ./bin/bundle update
$ ./bin/importmap update
```
