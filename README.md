# riemann-jmx

A utility to send JMX metrics to Riemann.


## Installation

As jruby is used to gain access to the MBean server, you need to [install it](https://github.com/jruby/jruby/wiki/GettingStarted) and then run a slightly modified gem install:

```sh
jruby -S gem install jmx4r riemann-client riemann-jmx
```

## Usage and Configuration

```sh
jruby $(which riemann-jmx) /path/to/riemann-jmx.yaml
```

