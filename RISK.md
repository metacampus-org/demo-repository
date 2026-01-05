# Security and Risk Documentation

## Known Vulnerabilities

### ws Denial of Service (DoS) Vulnerability

- **Advisory:** [GHSA-3h5v-q93c-6h6q](https://github.com/advisories/GHSA-3h5v-q93c-6h6q)
- **Severity:** High
- **Affected Package:** `ws` (versions >=8.0.0, excluding patched versions 8.17.1 and 8.18.0)
- **Transitive Dependencies:** `@walletconnect/socket-transport`, `@walletconnect/core`, `@walletconnect/client`, `@blockshake/defly-connect`, `@perawallet/connect`
- **Impact:** Attackers may cause a Denial of Service by sending requests with many HTTP headers.
- **Fix:** Upgrade transitive dependencies so that `ws` is at a patched version (8.17.1, 8.18.0, or later that includes the fix).
- **Mitigation:** Restrict public WebSocket access, apply network-level protections, and monitor for upstream fixes.
- **Status:** Fix available; team will track and update upstream dependencies to use a patched `ws` version as soon as feasible.
