![Clank-DNAS Logo](clank-dnas-logo.png)

This project builds a Docker image for a DNAS server based on FogNo23's [DNASrep](https://github.com/FogNo23/DNASrep/) repo.

This does include a Bind9 DNS server running on ports [`53\tcp`,`53\udp`] and a proof-of-concept containerized DNAS server that runs on port `443` with SSLv2 support enabled.

The following are built in the container:
- Ubuntu 16.04
- OpenSSL 1.0.2g (1 Mar 2016 (up to OpenSSL 1.0.2j))
- apache2 (Apache/2.4.18 (Ubuntu) 2019-10-08T13:31:25)
- php7.0 (v7.0.33-0ubuntu0.16.04.14)
- Bind9 DNS Server

### DNS
The UYA hostnames are located in `dns-server/db.dnas.rpz`. By default all UYA hostnames resolve to the IP passed in during build. If you want to set specific IP per host, edit `db.dnas.rpz` and manually set the IP per hostname by replacing `SERVER_IP`.

### Build

Run the `build.sh` file to generate the Docker image `dnas-test`. You can pass in the server IP to use during the build:

Example:
```
./build.sh 192.168.1.100
```

This will set all UYA hostnames to resolve to the IP `192.168.1.100`

### Run

Run the `run.sh` file. Or `test.sh` for testing.

When running `test.sh` you must activate the apache2 server and bind9 manually:
```
service apache2 restart
/etc/init.d/bind9 start
```
