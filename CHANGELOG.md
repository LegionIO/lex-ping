# Changelog

## [0.1.3] - 2026-03-30

### Changed
- update to rubocop-legion 0.1.7, resolve all offenses

## [0.1.2] - 2026-03-22

### Changed
- Migrated gemspec to real sub-gem runtime dependencies: legion-cache >= 1.3.11, legion-crypt >= 1.4.9, legion-data >= 1.4.17, legion-json >= 1.2.1, legion-logging >= 1.3.2, legion-settings >= 1.3.14, legion-transport >= 1.3.9 (replaces multi_json)
- Updated spec_helper to require real sub-gem helpers and define Helpers::Lex with full helper includes
- Removed redundant inline Helpers::Lex stubs from individual runner specs
- Added Actors::Every and Actors::Subscription stubs for test isolation

## [0.1.1] - 2026-03-18

### Fixed
- HTTP runner now uses `Net::Ping::HTTP` instead of `Net::Ping::UDP` for proper HTTP reachability checks
- HTTP runner auto-prepends `http://` scheme when bare hostname is provided

### Added
- Runner specs for HTTP (6 examples), TCP (3 examples), UDP (3 examples) with stubbed `net-ping` classes

## [0.1.0] - 2026-03-13

### Added
- Initial release
