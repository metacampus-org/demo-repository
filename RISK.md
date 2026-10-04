# Security and Risk Documentation

## Resolved Vulnerabilities

### ws Denial of Service (DoS) Vulnerability - RESOLVED ✅

- **Advisory:** [GHSA-3h5v-q93c-6h6q](https://github.com/advisories/GHSA-3h5v-q93c-6h6q)
- **Severity:** High
- **Affected Package:** `ws` (versions >=8.0.0, excluding patched versions 8.17.1 and 8.18.0)
- **Transitive Dependencies:** `@walletconnect/socket-transport`, `@walletconnect/core`, `@walletconnect/client`, `@blockshake/defly-connect`, `@perawallet/connect`
- **Impact:** Attackers may cause a Denial of Service by sending requests with many HTTP headers.
- **Resolution Applied:** 
  - Added npm overrides to force `ws` version >=8.17.1
  - All ws instances now running secure version 8.19.0
  - Verified with npm audit: 0 vulnerabilities found
- **Status:** ✅ RESOLVED - Updated January 7, 2026
- **Verification:** Run `npm audit` and `npm ls ws` to confirm secure versions

## Known Vulnerabilities

*No active vulnerabilities at this time.*
