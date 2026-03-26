# ECS Fargate Platform — Docker | ECS | ECR | Terraform | GitHub Actions

This project deploys a containerised Python web application to AWS using ECS Fargate, Terraform, and GitHub Actions. It provisions the underlying infrastructure, builds and pushes Docker images to Amazon ECR, and automates ECS service redeployments through a secure CI/CD pipeline using GitHub OIDC authentication.

## Architecture

Internet → Application Load Balancer → ECS Fargate Service → Docker Container  
GitHub Actions → Amazon ECR → ECS Service Redeployment

## Features

- Containerised Python web application using Docker
- Infrastructure provisioned with Terraform
- Amazon ECS Fargate for serverless container orchestration
- Amazon ECR for container image storage
- Application Load Balancer for traffic distribution
- GitHub Actions CI/CD pipeline for automated build and deployment
- Secure AWS authentication using GitHub OIDC (no static credentials)
- CloudWatch log group for container logging
- Multi-subnet VPC design with security groups and routing

## Tech Stack

- AWS ECS Fargate
- Amazon ECR
- Application Load Balancer
- AWS IAM
- AWS CloudWatch
- AWS VPC
- Terraform
- Docker
- GitHub Actions
- Python / Flask

## Project Structure

```text
project-4-ecs-fargate-app/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── terraform/
│   ├── alb.tf
│   ├── cloudwatch.tf
│   ├── ecr.tf
│   ├── ecs.tf
│   ├── github-actions-oidc.tf
│   ├── iam.tf
│   ├── networking.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── security.tf
│   └── service.tf
├── app.py
├── Dockerfile
├── requirements.txt
├── .gitignore
└── README.md