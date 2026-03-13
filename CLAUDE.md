# lex-ping: Network Ping Extension for LegionIO

**Repository Level 3 Documentation**
- **Category**: `/Users/miverso2/rubymine/legion/extensions/CLAUDE.md`

## Purpose

Legion Extension that performs network connectivity checks. Provides runners for HTTP, TCP, and UDP ping operations to verify host reachability.

**License**: MIT

## Architecture

```
Legion::Extensions::Ping
└── Runners/
    ├── Http               # HTTP ping (checks HTTP endpoint availability)
    ├── Tcp                # TCP ping (checks port connectivity)
    └── Udp                # UDP ping (checks UDP reachability)
```

## Dependencies

| Gem | Purpose |
|-----|---------|
| `net-ping` | Network ping library |
| `multi_json` | JSON parser abstraction |

## Testing

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

---

**Maintained By**: Matthew Iverson (@Esity)
