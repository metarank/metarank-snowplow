#!/bin/bash

set -euxo pipefail

JSONSCHEMA=$(mktemp /tmp/jsonschema.XXXXXX)

wget -O $JSONSCHEMA "https://json-schema.org/draft/2020-12/schema"

jsonschema -i schemas/ai.metarank/user/1-0-0 $JSONSCHEMA
jsonschema -i schemas/ai.metarank/item/1-0-0 $JSONSCHEMA
jsonschema -i schemas/ai.metarank/ranking/1-0-0 $JSONSCHEMA
jsonschema -i schemas/ai.metarank/interaction/1-0-0 $JSONSCHEMA

echo "validation successful"