#!/bin/bash

# this script is meant to be used with 'datalad run'

export PATH="${PATH}:bin"

gsutil -m cp -R gs://natural_questions/v1.0-simplified/simplified-nq-train.jsonl.gz .
