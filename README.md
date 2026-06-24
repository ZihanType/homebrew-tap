# homebrew-tap
My homebrew tap repository

## Automation

This repository includes a scheduled GitHub Actions workflow that checks eligible casks for newer upstream releases and updates their version strings automatically.

- The workflow runs daily and can also be started manually with workflow_dispatch.
- The first iteration only updates casks that already define both sha256 :no_check and a livecheck block.
