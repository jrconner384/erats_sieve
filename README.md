[![Build Status](https://travis-ci.org/jrconner384/erats_sieve.svg?branch=master)](https://travis-ci.org/jrconner384/erats_sieve)
[![Inline docs](http://inch-ci.org/github/jrconner384/erats_sieve.svg?branch=master)](http://inch-ci.org/github/jrconner384/erats_sieve)
[![Coverage Status](https://coveralls.io/repos/jrconner384/erats_sieve/badge.svg?branch=open_CI)](https://coveralls.io/r/jrconner384/erats_sieve?branch=CI)
EratsSieve
==========
EratsSieve is a pure Ruby implementation of the sieve of Eratosthenes, a prime number sieve.

It provides one class method, `#primes_to(top)` which, predictably, returns prime numbers up to the top argument.

Getting the Gem
---------------
Add my [Gemfury repo](https://repo.fury.io/jrconner384/) to your sources:

`gem sources -a https://repo.fury.io/jrconner384/`

then do this:

`gem install erats_sieve`.

Changelog
---------
__Version 0.0.7__ (upcoming)

This is a big step for this project. I'm wiring this up with Travis-CI and Coveralls to provide nice test coverage details. I've also got this groovy README happening, not to mention the tests that Coveralls will keep an eye on.

Thanks
------
[Travis-CI](https://travis-ci.org) - The excellent CI service.

[Coveralls](https://coveralls.io) - For running my test suites after each push.

[MiniTest](https://github.com/seattlerb/minitest) - An excellent Ruby test framework.
