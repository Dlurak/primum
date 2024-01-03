# Primum

Primum is a simple CLI to get details about a number, e.g. if it's a prime or if it is even/odd written in V.

## Usage

```bash
$ ./primum -m <mode> <number>
```

### Mode

The Default is prime but here is a list of all modes:

- prime
- even
- odd

### Examples

```bash
# Check if a number is prime
primum -m prime 13

# Check if a number is even
primum -m even 24

# Check if a number is odd
primum -m odd 7
```

## Installation

### Recommended on Linux

Simply run `install.sh` with root privileges, after that primum will be installed.

### Building from source

I publish the binaries for Windows and Linux but if you want to build Primum from source, e.g. because you are using a mac follow these steps:

1. [Install V](https://github.com/vlang/v/blob/master/doc/docs.md#install-from-source)
2. Clone this repository
3. Run the following command:
   ```bash
   $ v .
4. Put the binary/executable into your path so you can execute it from everywhere.
