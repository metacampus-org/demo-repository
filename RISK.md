# Security and Risk Documentation

## Known Vulnerabilities

### ws Denial of Service (DoS) Vulnerability

- **Advisory:** [GHSA-3h5v-q93c-6h6q](https://github.com/advisories/GHSA-3h5v-q93c-6h6q)
- **Severity:** High
- **Affected Package:** `ws` (versions 7.0.0–7.5.9)
- **Transitive Dependencies:** `@walletconnect/socket-transport`, `@walletconnect/core`, `@walletconnect/client`, `@blockshake/defly-connect`, `@perawallet/connect`
- **Impact:** Attackers may cause a Denial of Service by sending requests with many HTTP headers.
- **Fix:** No patch available as of this writing. Upstream dependencies must update to a patched version when released.
- **Mitigation:** Restrict public WebSocket access, apply network-level protections, and monitor for upstream fixes.
- **Status:** Risk documented; team will monitor and update dependencies when a fix is available.
