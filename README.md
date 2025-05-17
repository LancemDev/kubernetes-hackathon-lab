# Widgetario Online Store

Welcome to the Widgetario Online Store project! This is a comprehensive, cloud-native application designed to showcase best practices in modern software development with a focus on Kubernetes, CI/CD, monitoring, logging, and more. The application is structured as a distributed system with multiple microservices that work together to provide a full e-commerce store experience.

## Project Overview

The Widgetario Online Store is a microservices-based application that demonstrates the use of various cloud-native technologies and practices. It is designed to be deployed on Kubernetes and includes everything from basic service setup to advanced features like ingress control, monitoring, logging, and a complete CI/CD pipeline.

## Getting Started

Before you begin, make sure you have the following prerequisites installed:

- Minikube
- Kubectl
- Helm
- Docker
- BuildKit
- Jenkins

For detailed installation instructions, please refer to the official documentation of each tool.

## Project Structure

The project is organized into several parts, each focusing on a specific aspect of the application:

- **Basic Microservices Setup**: Initial setup of microservices and their deployments.
- **Configuration Management**: Handling secrets and configurations for the services.
- **Persistent Storage**: Implementing stateful services with persistent storage.
- **Ingress and Networking**: Setting up ingress controllers and managing external access.
- **Advanced Networking**: Advanced ingress configurations and Role-Based Access Control (RBAC).
- **Monitoring and Logging**: Integration with Prometheus, Grafana, and Fluent Bit for observability.
- **CI/CD Pipeline**: Continuous Integration and Deployment using Jenkins and Helm charts.

## Setup Instructions

To set up the project, follow these steps:

1. Start Minikube:


2. Apply Kubernetes Resources:
Navigate to the `part1/` directory and run the setup script:


3. Access the Web Application:
Use Minikube to access the web service:


## Microservices Overview

The application consists of the following microservices:

- **Products API**: Manages product information.
- **Stock API**: Handles stock levels for products.
- **Products Database**: Stores product and stock information.
- **Web**: The front-end service that users interact with.

Each service is containerized and defined within its own deployment configuration.

## Monitoring and Logging

The application is monitored using Prometheus and visualized with Grafana. Logs are aggregated and managed by Fluent Bit.

## Ingress and Networking

The application uses NGINX as the ingress controller to manage external access to the services.

## CI/CD Pipeline

The CI/CD pipeline is implemented using Jenkins, which automates the build, test, and deployment processes. Docker images are built efficiently with BuildKit.

## Helm Chart

The Helm chart for deploying the Widgetario application is located in the `part7/widgetario/` directory. Customize the deployment by modifying the `values.yaml` file.

## Contributing

Contributions are welcome! Please fork the repository, create a new branch for your feature or bugfix, and submit a pull request with a detailed description of your changes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

For more detailed information on each part of the project, please refer to the respective directories and their README.md files.