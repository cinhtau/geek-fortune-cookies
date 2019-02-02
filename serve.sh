#!/usr/bin/env bash

export JEKYLL_GITHUB_TOKEN=$(cat GH_TOKEN)

bundle exec jekyll serve
