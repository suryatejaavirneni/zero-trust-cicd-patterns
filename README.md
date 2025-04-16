# Zero Trust CI/CD Patterns

This repository contains working code examples to accompany a multi-post series on Zero Trust automation, identity-aware infrastructure, and secure CI/CD practices.

Each folder maps to a blog post and illustrates best practices for:

- Replacing static secrets with OIDC tokens
- Validating workload identity using job claims and runner fingerprints
- Enforcing policy through a lightweight identity broker
- Building auditable and composable trust in your automation workflows

## Blog Series Reference

- [Why CI/CD Pipelines Break Zero Trust](https://your-article-link.com)
- More posts coming soon...

---

## 01 - Static vs. OIDC Tokens

📂 `01-static-vs-oidc/` demonstrates:

- 🔒 A bad practice workflow using long-lived AWS secrets
- ✅ A secure setup using GitHub's OIDC tokens with AWS STS
- 📩 A sample broker request showing how identity and trust can be bundled
- 🔍 A sample Rego policy for evaluating job + environment claims

```bash
# Validate your OIDC job token locally
curl -H "Authorization: bearer $ACTIONS_ID_TOKEN_REQUEST_TOKEN" \
     "$ACTIONS_ID_TOKEN_REQUEST_URL"
```

More scenarios, including SPIRE-based attestation and identity brokers, will follow in future folders.
