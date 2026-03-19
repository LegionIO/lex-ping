# lex-ping

Network connectivity checks for [LegionIO](https://github.com/LegionIO/LegionIO). Verify host reachability via HTTP, TCP, and UDP pings.

## Installation

```bash
gem install lex-ping
```

## Functions

- **Http** - Checks reachability via `Net::Ping::HTTP` (auto-prepends `http://` to bare hostnames)
- **Tcp** - TCP ping (checks port connectivity via `Net::Ping::TCP`)
- **Udp** - UDP ping (checks UDP reachability via `Net::Ping::UDP`)

All runners accept `host:` and return `{ host:, result:, success: true/false }`.

## Usage

```ruby
Legion::Ingress.run('lex_ping.http.ping', host: 'myservice.internal')
Legion::Ingress.run('lex_ping.tcp.ping', host: 'myservice.internal')
Legion::Ingress.run('lex_ping.udp.ping', host: 'myservice.internal')
```

## Requirements

- Ruby >= 3.4
- [LegionIO](https://github.com/LegionIO/LegionIO) framework
- `net-ping`

## License

MIT
