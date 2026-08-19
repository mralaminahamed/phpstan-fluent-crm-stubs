# Changelog

All notable changes to this package are documented here.

**Versions track the upstream plugin.** A release of this package stubs the matching upstream
release, so you can require the same version you run against. That is also why the entries below are
mostly "regenerated against X" — the stubs have no behaviour of their own to change.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Added

- `tests/StubsTest.php` and `phpunit.xml.dist`, so `composer test` runs. It asserts every generated
  stub file parses and actually declares something — the two ways a regeneration fails silently.
- `phpcs.xml.dist`, so `composer cs` and `composer cs-fix` have a ruleset. Generated `.stub` files
  and `source/` are excluded; only the PHP written by hand here is checked.
- CI on push and pull request across PHP 7.4 and 8.3, running `cs`, `analyze` and `test`.
- This changelog.

### Fixed

- `composer test`, `composer cs` and `composer check` all failed: `phpunit` had no configuration and
  `phpcs` had no ruleset.
- `composer analyze` reported errors that are inherent to stubs. The generated files were in
  PHPStan's `paths`, which asks it to check the bodies of declarations that are empty by definition.
  They are `scanFiles` now — the symbols become known without any claim about bodies a stub cannot
  have — and `paths` covers the hand-written PHP instead.

## [3.1.10] - 2026-08-16

Regenerated against upstream 3.1.10.

## [3.1.9] - 2026-08-16

Regenerated against upstream 3.1.9.

## [3.1.8] - 2026-08-16

Regenerated against upstream 3.1.8.

## [3.1.7] - 2026-06-28

Regenerated against upstream 3.1.7.

## [3.1.6] - 2026-06-28

Regenerated against upstream 3.1.6.

## [3.1.5] - 2026-06-28

Regenerated against upstream 3.1.5.

## [3.1.0] - 2026-06-28

Regenerated against upstream 3.1.0.

## [3.0.7] - 2026-06-28

Regenerated against upstream 3.0.7.
