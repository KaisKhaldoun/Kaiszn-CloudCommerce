# 🚀 Kaiszn CloudCommerce Application

Welcome to the Kaiszn CloudCommerce application! This project demonstrates the setup of a highly available, scalable, and secure e-commerce application using cutting-edge DevOps practices and tools. 

## 📚 Table of Contents
- [Project Overview](#project-overview)
- [Tech Stack](#tech-stack)
- [Setup Instructions](#setup-instructions)
  - [Local Development](#local-development)
  - [Kubernetes Setup](#kubernetes-setup)
  - [AWS Infrastructure with Terraform](#aws-infrastructure-with-terraform)
  - [CI/CD Pipeline with GitHub Actions](#cicd-pipeline-with-github-actions)
- [GitHub Secrets](#github-secrets)
- [Conclusion](#conclusion)
- [Documentation and Resources](#documentation-and-resources)
- [Contributing](#contributing)
- [License](#license)
- [Created By](#created-by)
  
## Project Overview

The Kaiszn CloudCommerce application integrates with Shopify to pull product data and display it through a Node.js backend. The entire system is containerized using Docker, orchestrated with Kubernetes, and deployed on AWS using EKS. Infrastructure is managed as code with Terraform, ensuring a robust and scalable deployment.

## Tech Stack

- **Node.js**: The backend is built with Node.js, leveraging Express for a robust API.
- **Docker**: Containerization of the Node.js application for consistent environments across development, testing, and production.
- **Kubernetes (K8s)**: For container orchestration, managing deployment, scaling, and operations of the application containers.
- **Terraform**: Infrastructure as code, used to provision and manage AWS resources.
- **AWS (Amazon Web Services)**: 
  - **EKS (Elastic Kubernetes Service)**: Managed Kubernetes service for running the application.
  - **RDS (Relational Database Service)**: Managed database service for storing application data.
  - **S3 (Simple Storage Service)**: Object storage for static assets and backups.
  - **CloudFront**: Content delivery network (CDN) for delivering static content with low latency.
- **GitHub Actions**: CI/CD pipeline for automating the build, test, and deployment processes.

## Setup Instructions

### Local Development

1. **Clone the repository**:
   ```sh
   git clone https://github.com/your-username/Kaiszn-CloudCommerce.git
   cd Kaiszn-CloudCommerce

2. **Set up environment variables**:

    **Create a .env file in the /apps directory with the following content** :
    ```sh
   SHOPIFY_ACCESS_TOKEN=your_shopify_access_token
   SHOP_NAME=your_shop_name
   SHOPIFY_API_VERSION=2024-07
   PORT=3000

3. **Build and run the Docker container**:
   ```sh
   docker build -t kaiszn-cloudcommerce-app .
   docker run -d -p 3000:3000 --env-file .env kaiszn-cloudcommerce-app


## Kubernetes Setup


1. **Set up Minikube for local testing**:
   ```sh
   minikube start
   kubectl apply -f k8s/deployment.yaml
   kubectl apply -f k8s/configmap.yaml
   kubectl apply -f k8s/secret.yaml


## AWS Infrastructure with Terraform

1. **Initialize Terraform**:
   ```sh
   terraform init

2. **Plan Terraform deployment**:
   ```sh
   terraform plan

3. **Apply Terraform configuration (optional)**:
   ```sh
   terraform apply

## CI/CD Pipeline with GitHub Actions

This project includes a GitHub Actions workflow for CI/CD. The workflow:

1. Pulls the Docker image from Docker Hub.
2. Configures AWS credentials.
3. Updates kubeconfig to connect to the EKS cluster.
4. Injects secrets into Kubernetes manifests.
5. Deploys the application to the EKS cluster.


## GitHub Secrets

1. **To securely manage sensitive information and credentials, you need to add the following secrets to your GitHub repository**:
    ```sh
   DOCKER_USERNAME: Your Docker Hub username.
   DOCKER_PASSWORD: Your Docker Hub password.
   AWS_ACCESS_KEY_ID: Your AWS access key ID.
   AWS_SECRET_ACCESS_KEY: Your AWS secret access key.
   SHOPIFY_ACCESS_TOKEN: Your Shopify access token.


## How to Add Secrets in GitHub

1. Navigate to your repository on GitHub.
2. Click on Settings.
3. In the left sidebar, click on Secrets.
4. Click on New repository secret.
5. Add each secret listed above with the respective values.


#  Conclusion

This project demonstrates a complete DevOps lifecycle, from local development to CI/CD, using a modern tech stack. The combination of Node.js, Docker, Kubernetes, Terraform, and AWS showcases a powerful, scalable, and resilient infrastructure setup. This setup ensures that the application is ready for production with minimal manual intervention, highlighting best practices in infrastructure management and automation.

##  Documentation and Resources

- **Node.js**: [Official Documentation](https://nodejs.org/en/docs/)
- **Docker**: [Official Documentation](https://docs.docker.com/)
- **Kubernetes**: [Official Documentation](https://kubernetes.io/docs/home/)
- **Terraform**: [Official Documentation](https://www.terraform.io/docs/)
- **AWS**: [Official Documentation](https://aws.amazon.com/documentation/)
- **GitHub Actions**: [Official Documentation](https://docs.github.com/en/actions)

## Contributing

We welcome contributions to improve the Kaiszn CloudCommerce application! Please fork the repository, create a new branch, and submit a pull request. Make sure to follow the [contributing guidelines](CONTRIBUTING.md).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Created By

This project was created by [kaiskhaldoun](https://github.com/kaiskhaldoun). If you have any questions or suggestions, feel free to reach out!

---

Thank you for checking out the Kaiszn CloudCommerce application! We hope this project inspires you to explore and implement modern DevOps practices in your own projects.

