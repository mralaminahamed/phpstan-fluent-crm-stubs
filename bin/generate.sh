#!/usr/bin/env bash
#
# Generate FluentCRM stubs from the source directory.
#

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

HEADER=$'/**\n * Generated stub declarations for FluentCRM.\n * @see https://fluentcrm.com\n * @see https://github.com/mralaminahamed/phpstan-fluent-crm-stubs\n */'

FILE="$ROOT_DIR/fluent-crm-stubs.stub"
FILE_CONSTANTS="$ROOT_DIR/fluent-crm-constants-stubs.stub"
GENERATOR_BIN="$ROOT_DIR/vendor/bin/generate-stubs"
FINDER_FILE="$ROOT_DIR/configs/finder.php"
FINDER_CONSTANTS_FILE="$ROOT_DIR/configs/finder-constants.php"

set -e

test -f "$FILE" || touch "$FILE"
test -f "$FILE_CONSTANTS" || touch "$FILE_CONSTANTS"
test -d "$ROOT_DIR/source/fluent-crm" || {
    echo "ERROR: FluentCRM source not found at source/fluent-crm/"
    echo "Download it with: cd source && wget https://downloads.wordpress.org/plugin/fluent-crm.latest-stable.zip && unzip fluent-crm.zip"
    exit 1
}

"$GENERATOR_BIN" \
    --include-inaccessible-class-nodes \
    --force \
    --finder="$FINDER_FILE" \
    --header="$HEADER" \
    --functions \
    --classes \
    --interfaces \
    --traits \
    --out="$FILE"

"$GENERATOR_BIN" \
    --include-inaccessible-class-nodes \
    --force \
    --finder="$FINDER_CONSTANTS_FILE" \
    --header="$HEADER" \
    --constants \
    --out="$FILE_CONSTANTS"

echo "Stubs generated successfully."
