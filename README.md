# MongoDB Standalone and MongoDB Admin Test
This repository demonstrates starting up MongoDB and Admin app (`mongoku`)

## Pre Condition
- Java 8 JDK
- Docker 2.2.0.5
- Helm 3.1.2

## Quick Start to test MongoDB Admin
1. Start Cluster `make start`
1. Wait until all Pods start with `make info` command.
1. Access to `http://localhost:31000` and you'll see the Admin panel

