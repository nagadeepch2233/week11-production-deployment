# 🔒 Security Guide

This document outlines best practices to keep the Library Application secure.

---

## 1️⃣ Secrets Management
- Never hardcode passwords, API keys, or sensitive data in the code.
- Use environment variables for secrets:
```bash
export APP_ENV=production
export DOCKER_PASSWORD=yourpassword
