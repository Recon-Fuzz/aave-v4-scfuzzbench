## Echidna Issue 1505 POC

This branch contains a reproduction setup for the optimization-mode delay/no-op behavior discussed in:

https://github.com/crytic/echidna/issues/1505

### Changes

- Switched `echidna.yaml` to optimization mode.
- Added delay bounds:
  - `maxTimeDelay: 604800`
  - `maxBlockDelay: 60480`
- Added `optimize_totalBorrowedLessThanSupplied_v1()` as the optimization target in `tests/recon/Properties.sol`.

### Command

```bash
timeout 3600s echidna tests/recon/CryticTester.sol \
  --contract CryticTester \
  --config echidna.yaml \
  --format text \
  --workers 8 \
  --disable-slither \
  --test-limit 1000000000
```

### Observed Result

- Best observed optimization value: `261125980353`
- Run log: `echidna-1h-highlimit.log`
- Saved reproducer: `reports/echidna-issue-1505-reproducer.txt`

The reproducer sequence contains large time/block delays and many revert-tolerant / effectively no-op calls while still improving the optimization metric.
