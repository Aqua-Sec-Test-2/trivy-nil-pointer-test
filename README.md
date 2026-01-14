# Trivy Nil Pointer Test Repository

This repository is used to test the fix for SAAS-31508: Trivy commercial failing with nil pointer.

## Test Process

### Phase 1: Reproduce the Bug
1. The workflow uses `aquasec/aqua-scanner:v0.213.0` (version without fix)
2. Create a PR - should trigger nil pointer panic
3. Expected error: `runtime error: invalid memory address or nil pointer dereference`

### Phase 2: Verify the Fix
1. After the fix is released, update `.github/workflows/aqua.yml`:
   - Change `aquasec/aqua-scanner:v0.213.0` to the new version with fix
2. Create a new PR or push to trigger the workflow
3. Should complete successfully without panic

## Requirements

- AI data feature flag (SAAS-29367) must be enabled in the org
- Trivy-server should be disabled/not configured (to trigger nil gateway scenario)
- Repository should have SAST findings to enter the AI scan block

