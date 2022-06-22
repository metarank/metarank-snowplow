# Snowplow Iglu schemas for Metarank

This repo contains a set of JSON schemas for Snowplow Iglu registry to integrate
Snowplow and Metarank. See the main [Metarank Snowplow integration document](todo) for
details on setting this thing up.

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
            "uri": "http://iglu.metarank.ai"
          }
        }
      }
    ]
  }
}
```

## License

Licensed under the [Apache 2.0](LICENSE) license.