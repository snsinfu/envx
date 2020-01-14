# envx

`envx` is a POSIX shell script that sets environment and executes a command.
Similar to the standard `env(1)` but `envx` can load environment from file(s).

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
