# lex-ping: Network Ping Extension for LegionIO

**Repository Level 3 Documentation**
- **Parent**: `/Users/miverso2/rubymine/legion/extensions-core/CLAUDE.md`
- **Grandparent**: `/Users/miverso2/rubymine/legion/CLAUDE.md`

## Purpose

Legion Extension that performs network connectivity checks. Provides runners for HTTP, TCP, and UDP ping operations to verify host reachability. No explicit actors - the framework auto-generates subscription actors for each runner.

**GitHub**: https://github.com/LegionIO/lex-ping
**License**: MIT
**Version**: 0.1.0

## Architecture

```
Legion::Extensions::Ping
└── Runners/
    ├── Http               # HTTP ping via Net::Ping::UDP on port 'http'
    ├── Tcp                # TCP ping via Net::Ping::TCP
    └── Udp                # UDP ping via Net::Ping::UDP
```

No explicit actors directory - the framework auto-generates subscription actors for each runner.

## Runner Interface

All three runners expose a single `ping(host:, **)` method and return:
```ruby
{ host: host, result: result_object, success: true/false }
```

Note: The HTTP runner currently uses `Net::Ping::UDP.new(host, 'http')` rather than an HTTP-specific class.

## Key Files

| Path | Purpose |
|------|---------|
| `lib/legion/extensions/ping.rb` | Entry point, extension registration |
| `lib/legion/extensions/ping/runners/http.rb` | HTTP ping runner |
| `lib/legion/extensions/ping/runners/tcp.rb` | TCP ping runner |
| `lib/legion/extensions/ping/runners/udp.rb` | UDP ping runner |

## Dependencies

| Gem | Purpose |
|-----|---------|
| `net-ping` | Network ping library (TCP, UDP) |
| `multi_json` | JSON parser abstraction |

## Testing

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

---

**Maintained By**: Matthew Iverson (@Esity)
