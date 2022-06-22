# Snowplow Iglu schemas for Metarank

This repo contains a set of JSON schemas for Snowplow Iglu registry to integrate
Snowplow and Metarank. See the main [Metarank Snowplow integration document](todo) for
details on setting this thing up.

## Contents

Schemas in [schemas](schemas/ai.metarank) directory are regular [JSONSchema](https://json-schema.org/specification.html) schemas,
so you can use these to validate your events even without the Snowplow Enrich.

There are four different Metarank event types with the corresponding schemas:
1. `ai.metarank/item/1-0-0`: [item metadata event](schemas/ai.metarank/item/1-0-0)
2. `ai.metarank/user/1-0-0`: [user metadata event](schemas/ai.metarank/user/1-0-0)
3. `ai.metarank/ranking/1-0-0`: [ranking event](schemas/ai.metarank/item/1-0-0)
4. `ai.metarank/interaction/1-0-0`: [interaction event](schemas/ai.metarank/interaction/1-0-0)

Check out the [main metarank docs](https://docs.metarank.ai/introduction/configuration/event-schema) about event type format details.

## Schema resolution

These schemas are published automatically on `https://iglu.metarank.ai`, you can use the 
following `resolver.json` snippet to use it in the enrichment pass:
```json
{
  "schema": "iglu:com.snowplowanalytics.iglu/resolver-config/jsonschema/1-0-1",
  "data": {
    "cacheSize": 500,
    "repositories": [
      {
        "name": "Metarank",
        "priority": 0,
        "vendorPrefixes": [ "ai.metarank" ],
        "connection": {
          "http": {
            "uri": "https://iglu.metarank.ai"
          }
        }
      }
    ]
  }
}
```

Both `http` and `https` schemas are supported, but `https` is recommended.

## License

Licensed under the [Apache 2.0](LICENSE) license.