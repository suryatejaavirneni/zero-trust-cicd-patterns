package cicd.authz

default allow = false

allow {
  input.oidc_claims.repo == "org/myapp"
  input.runner_fingerprint == "sha256:abc123"
}
