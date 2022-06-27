#!/bin/bash

set -euxo pipefail

JSONSCHEMA=$(mktemp /tmp/jsonschema.XXXXXX)

wget -O $JSONSCHEMA "https://json-schema.org/draft/2020-12/schema"

jsonschema -i schemas/ai.metarank/user/jsonschema/1-0-0 $JSONSCHEMA
jsonschema -i schemas/ai.metarank/item/jsonschema/1-0-0 $JSONSCHEMA
jsonschema -i schemas/ai.metarank/ranking/jsonschema/1-0-0 $JSONSCHEMA
jsonschema -i schemas/ai.metarank/interaction/jsonschema/1-0-0 $JSONSCHEMA

echo "validation successful"