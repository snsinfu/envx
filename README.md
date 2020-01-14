# envx

[![Release][release-badge]][release-url]
[![Build Status][travis-badge]][travis-url]
[![CC0 Public Domain][license-badge]][license-url]

`envx` is a POSIX shell script that sets environment and executes a command.
Similar to the standard `env(1)` but `envx` can load environment from file(s).

[release-badge]: https://img.shields.io/github/release/snsinfu/envx.svg
[release-url]: https://github.com/snsinfu/envx/releases
[travis-badge]: https://travis-ci.org/snsinfu/envx.svg?branch=master
[travis-url]: https://travis-ci.org/snsinfu/envx
[license-badge]: https://img.shields.io/badge/license-CC0-blue.svg
[license-url]: https://creativecommons.org/publicdomain/zero/1.0/

## Install

```
curl -Lo /usr/local/bin/envx https://github.com/snsinfu/envx/raw/master/envx
chmod 0755 /usr/local/bin/envx
```

Or:

```
git clone https://github.com/snsinfu/envx.git
sudo make install
```

## Usage

```
usage: envx [-hip] [-f envfile] [name=value]... command...

options:
  -h          print this help message and exit
  -i          clear environment
  -p          reset PATH to system's default (getconf PATH)
  -f envfile  load environment from file
```

The environment file is a shell script containing variable assignments:

```
PORT=1234
AWS_ACCESS_KEY="foobar"
AWS_SECRET_KEY="baz"
```

## License

Public domain ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).
