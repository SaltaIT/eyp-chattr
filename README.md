# chattr

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What chattr affects](#what-chattr-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with chattr](#beginning-with-chattr)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)

## Overview

This documentation has reviewed up to version 0.1.2.

Create e2fs_immutable type that manage the immutable bit of a file.

## Setup

### What chattr affects

* Change the immutable bit of the desired file.

## Usage

```puppet
e2fs_immutable { '/etc/hosts':
  ensure => 'absent',
}
```

## Reference

### Types:
* `e2fs_immutable`
