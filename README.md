# Rahocorasick

[![Gem Version](https://badge.fury.io/rb/rahocorasick.svg)](https://badge.fury.io/rb/rahocorasick)

`Rahocorasick` is a Ruby wraper for Rust [Aho-Corasick](https://github.com/BurntSushi/aho-corasick) algorithm.

It is a string searching algorithm that locates elements of a finite set of strings (the "dictionary") within an input text.
It matches all strings simultaneously.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rahocorasick'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rahocorasick

## Usage

```ruby
ahoc = RAhoC.new ['foo', 'bar']
ahoc.lookup 'Foolish men play football in bar.'
=> ["foo", "bar"]
```

## Benchmark

```
Words size: 500
Test cases: 2000
Test text avg length: 3154
Test text max length: 23676
Test text min length: 13
--------------------
       user     system      total        real
each&include  6.487059   0.185424   6.672483 (  6.791808)
ruby_ahoc     4.178672   0.138610   4.317282 (  4.547964)
rust_ahoc     0.157662   0.004847   0.162509 (  0.166964)
```

> 🎈 Rust version about 27.2x fast than Ruby (pure version).

```
Words size: 500
Test cases: 2000
Test text avg length: 49162
Test text max length: 10392056
Test text min length: 577
--------------------
       user     system      total        real
each&include 27.903179   0.237389  28.140568 ( 28.563194)
ruby_ahoc    45.220535   0.363107  45.583642 ( 46.477702)
rust_ahoc     0.670583   0.007192   0.677775 (  0.686904)
```

> 🎈 Rust version about 67.7x fast than Ruby (pure version).

## Reference

- [Aho-Corasick](https://github.com/BurntSushi/aho-corasick) - Aho-Corasick string matching algorithm in Rust.
- [ahocorasick](https://github.com/ahnick/ahocorasick) - Aho-Corasick string matching algorithm in Ruby.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jinshuju/rahocorasick.
