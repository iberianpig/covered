# Covered

![Screenshot](media/example.png)

Covered uses modern Ruby features to generate comprehensive coverage, including support for templates which are compiled
into Ruby.

  - Incremental coverage - if you run your full test suite, and the run a subset, it will still report the correct
    coverage - so you can incrementally work on improving coverage.
  - Integration with Sus, Git, RSpec and Minitest- no need to configure anything - out of the box support for these
    platforms.
  - Supports coverage of views - templates compiled to Ruby code can be tracked for coverage reporting.

[![Development
Status](https://github.com/ioquatix/covered/workflows/Test/badge.svg)](https://github.com/ioquatix/covered/actions?workflow=Test)

## Motivation

Originally, Ruby coverage tools were unable to handle `eval`ed code. This is because the `coverage` module built into
Ruby doesn't expose the necessary hooks to capture it. Using the [parser](https://github.com/whitequark/parser) gem and
trace points allows us to do our own source code analysis to compute executable lines, thus making it possible to
compute coverage for "templates".

After this concept prooved useful, [it was integrated directly into Ruby](https://bugs.ruby-lang.org/issues/19008).

## Usage

Please see the [project documentation](https://github.com/ioquatix/covered) for more details.

  - [Getting Started](https://github.com/ioquatix/covered/blob/main/guides/getting-started/readme.md) - This guide explains how to get
    started with `covered` and integrate it with your test suite.

## See Also

  - [simplecov](https://github.com/colszowka/simplecov) – one of the original coverage implementations for Ruby, uses
    the built-in `coverage` library.
  - [sus](https://github.com/ioquatix/sus) - a test framework which uses `covered` to generate coverage reports.

## Contributing

We welcome contributions to this project.

1.  Fork it.
2.  Create your feature branch (`git checkout -b my-new-feature`).
3.  Commit your changes (`git commit -am 'Add some feature'`).
4.  Push to the branch (`git push origin my-new-feature`).
5.  Create new Pull Request.

### Developer Certificate of Origin

This project uses the [Developer Certificate of Origin](https://developercertificate.org/). All contributors to this
project must agree to this document to have their contributions accepted.

### Contributor Covenant

This project is governed by [Contributor Covenant](https://www.contributor-covenant.org/). All contributors and
participants agree to abide by its terms.
