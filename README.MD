# FTF Flipper IaC

## Introduction

This project is the technical challenge for a DevOps position at FTF. The challenge is to create a public blob storge with an endpoint containing a 'curlable' text file and a resource that uses an env var to define its name. And a CI/CD pipeline to deploy a static website and send a notification when the job executes.

## Setup


Add this section to your `~/.aws/config`

```conf
[profile lobs-flipper]
sso_start_url = https://lobs.awsapps.com/start
sso_region = us-east-1
sso_account_id = 190281595713
sso_role_name = AdministratorAccess
region = us-east-1
output = json
```

```bash

git clone git@github.com:magusd/flipper.git
cd src/1-project
tfswitch 1.2.8
terraform init
terraform plan

```


## Test the blob storage

```bash
export AWS_PROFILE=lobs-flipper
aws sso login
aws sts assume-role --role-arn arn:aws:iam::190281595713:role/190281595713-blob-storage-writter-role --role-session-name lobs > creds.json

export AWS_ACCESS_KEY_ID=$(cat creds.json | jq -r ".Credentials.AccessKeyId")
export AWS_SECRET_ACCESS_KEY=$(cat creds.json | jq -r ".Credentials.SecretAccessKey")
export AWS_SESSION_TOKEN=$(cat creds.json | jq -r ".Credentials.SessionToken")

aws sts get-callerd-identity

date > testfile.txt
aws s3 cp testfile.txt s3://190281595713-blob-storage/
aws s3 ls s3://190281595713-blob-storage/

```

## CI/CD
