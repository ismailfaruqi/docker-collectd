# docker-collectd
collectd Docker image using alpine linux as the base, with support for environment variable.

## Motivation
The primary purpose of this image is to create collectd image that can send metrics to InfluxDB.

## Usage
This image supports the following environment variable:

| name            | example       |
|-----------------|---------------|
| `INFLUXDB_HOST` | `127.0.0.1`   |
| `INFLUXDB_PORT` | `8806`        |
