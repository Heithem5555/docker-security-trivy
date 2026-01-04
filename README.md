# docker-security-trivy
Analyse et sécurisation d’une image Docker avec Trivy et CI/CD
## 🎯 Objective
This project demonstrates how to analyze and secure a Docker image using
Trivy and GitHub Actions as part of a CI pipeline.
## 🔁 CI/CD Overview

CI (Continuous Integration):
- Automatically runs security scans on each push to GitHub
- Uses GitHub Actions

CD (Continuous Deployment):
- Not implemented in this project
- Focus is on security validation before deployment
## 🔐 Security Pipeline

1. Developer pushes code to GitHub
2. GitHub Actions triggers Trivy scan
3. Trivy analyzes:
   - Dockerfile misconfigurations
   - OS vulnerabilities
   - Dependency vulnerabilities
4. A security report is generated
## 🛡 Why Trivy?

- Open-source
- Industry standard
- Scans Docker images and dependencies
- Easy CI/CD integration

The CI pipeline blocks the build if Trivy detects HIGH or CRITICAL
vulnerabilities, preventing insecure Docker images from being deployed.

Some HIGH and CRITICAL vulnerabilities originate from the base operating
system and have no available fixes. To mitigate risk, a minimal base
image was used and the application runs as a non-root user.
Remaining vulnerabilities are monitored and handled through CI
security gates.
