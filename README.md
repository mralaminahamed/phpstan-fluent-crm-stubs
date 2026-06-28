# FluentCRM Stubs

[![Latest Version](https://img.shields.io/packagist/v/mralaminahamed/fluent-crm-stubs.svg?color=4CC61E&style=flat-square)](https://packagist.org/packages/mralaminahamed/fluent-crm-stubs)
[![Downloads](https://img.shields.io/packagist/dt/mralaminahamed/fluent-crm-stubs.svg?style=flat-square)](https://packagist.org/packages/mralaminahamed/fluent-crm-stubs/stats)
[![License](https://img.shields.io/packagist/l/mralaminahamed/fluent-crm-stubs.svg?style=flat-square)](./LICENSE)
[![PHP Version](https://img.shields.io/packagist/php-v/mralaminahamed/fluent-crm-stubs.svg?style=flat-square)](./composer.json)

PHP stub declarations for [FluentCRM](https://fluentcrm.com) (free) to enhance IDE completion and static analysis capabilities. Generated using [php-stubs/generator](https://github.com/php-stubs/generator) directly from the source code.

## Features

- Complete function, class, and interface declarations
- Constant definitions for proper static analysis
- IDE autocompletion support
- PHPStan integration
- Covers FluentCRM 3.x (generated from 3.6.8)

## Requirements

- PHP >= 7.4
- Composer

## Installation

```bash
composer require --dev mralaminahamed/fluent-crm-stubs
```

## Configuration

### PHPStan (`phpstan.neon`)

```neon
parameters:
    scanFiles:
        - vendor/mralaminahamed/fluent-crm-stubs/fluent-crm-stubs.php
        - vendor/mralaminahamed/fluent-crm-stubs/fluent-crm-constants-stubs.php
```

Or use the bundled extension:

```neon
includes:
    - vendor/mralaminahamed/fluent-crm-stubs/extension.neon
```

## Regenerating Stubs

```bash
# Download FluentCRM source
cd source
wget https://downloads.wordpress.org/plugin/fluent-crm.latest-stable.zip
unzip fluent-crm.zip
cd ..

# Install dependencies and generate
composer install
composer generate
```

## Related Packages

- [phpstan-fluent-crm-pro-stubs](https://github.com/mralaminahamed/phpstan-fluent-crm-pro-stubs) — FluentCRM Pro stubs

## License

MIT. See [LICENSE](./LICENSE).
