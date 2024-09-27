# TODO

- Commit some volumes files containing configurations we want to persist
- Use a gateway container to easily encrypt traffic from multiple containers with a single gluetun container (this might be useful: https://stackoverflow.com/a/69055795)
- Implement consistency checks (e.g. dnsmasq.conf vs docker-compose.yml addresses) (maybe a library might come out of it?)

## Bugs

- `wireguard` and `wireguard-dnsmasq` are subject to a race condition at startup time which might cause `wireguard` to endlessly attempt to set up its own coredns
- Docker containers with volumes mapped to mounted directories that are not available at startup time create directories there
