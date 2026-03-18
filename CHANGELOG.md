# Changelog

## [0.1.1] - 2026-03-18

### Fixed
- HTTP runner now uses `Net::Ping::HTTP` instead of `Net::Ping::UDP` for proper HTTP reachability checks
- HTTP runner auto-prepends `http://` scheme when bare hostname is provided

### Added
- Runner specs for HTTP (6 examples), TCP (3 examples), UDP (3 examples) with stubbed `net-ping` classes

## [0.1.0] - 2026-03-13

### Added
- Initial release
