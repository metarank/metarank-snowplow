#!/bin/bash

set -euxo pipefail

JSONSCHEMA=$(mktemp /tmp/jsonschema.XXXXXX)

wget -O $JSONSCHEMA "http://iglucentral.com/schemas/com.snowplowanalytics.self-desc/schema/jsonschema/1-0-0#"

jsonschema -i schemas/ai.metarank/user/jsonschema/1-0-0 $JSONSCHEMA
jsonschema -i schemas/ai.metarank/item/jsonschema/1-0-0 $JSONSCHEMA
jsonschema -i schemas/ai.metarank/ranking/jsonschema/1-0-0 $JSONSCHEMA
jsonschema -i schemas/ai.metarank/interaction/jsonschema/1-0-0 $JSONSCHEMA

echo "validation successful"