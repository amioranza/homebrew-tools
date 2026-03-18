# Homebrew Tools

A collection of Homebrew formulae and casks for my personal tools.

## Available Formulae

- [sm2env](https://github.com/amioranza/sm2env) - CLI tool to fetch AWS Secrets Manager secrets and save them as .env files

## Available Casks

- [kubelizeme](https://git.mdcnet.casa/amioranza/kubelizeme) - Native desktop Kubernetes manager

## Installation

```bash
# Add the tap
brew tap amioranza/tools

# Install sm2env (CLI)
brew install amioranza/tools/sm2env

# Install kubelizeme (desktop app)
brew install --cask amioranza/tools/kubelizeme
```

## Updating

```bash
brew update
brew upgrade amioranza/tools/sm2env
brew upgrade --cask amioranza/tools/kubelizeme
```
