# DNAS Test

This project builds a Docker image for a DNAS server based on FogNo23's [DNASrep](https://github.com/FogNo23/DNASrep/) repo.

It should be noted this does not include a DNS server. This is only a proof-of-concept containerized DNAS server that runs on port `443` with SSLv2 support enabled.

The following are built in the container:
- Ubuntu 16.04
- OpenSSL 1.0.2g (1 Mar 2016 (up to OpenSSL 1.0.2j))
- apache2 (Apache/2.4.18 (Ubuntu) 2019-10-08T13:31:25)
- php7.0 (v7.0.33-0ubuntu0.16.04.14)

### Build

Run the `build.sh` file to generate the Docker image `dnas-test`.

### Run

Run the `run.sh` file. Or `test.sh` for testing.
