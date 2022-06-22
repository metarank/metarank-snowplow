#!/bin/bash

jsonschema -i schemas/ai.metarank/user/1-0-0 -o pretty jsonschema.json
jsonschema -i schemas/ai.metarank/item/1-0-0 -o pretty jsonschema.json
jsonschema -i schemas/ai.metarank/ranking/1-0-0 -o pretty jsonschema.json
jsonschema -i schemas/ai.metarank/interaction/1-0-0 -o pretty jsonschema.json