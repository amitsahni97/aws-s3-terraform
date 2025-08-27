
# Terraform S3 Bucket Creator

This Docker image creates an AWS S3 private bucket using Terraform. It is designed to be simple, secure, and reusable for developers and DevOps engineers.

## 🛠️ Features
- Uses Terraform to create a private S3 bucket.
- Accepts AWS credentials and configuration via environment variables
- Lightweight and easy to use

## 🚀 Usage

### 1. Pull the Image from dockerhub(Note: Even you can create your own image by building this dockerfile)
```bash
docker pull 468766/aws-s3-terraform
```

### 2. Run the Container(Note: Run your container if you have not pulled specified image from docker hub)
```bash
docker run -e TF_VAR_access_key='YOUR_AWS_ACCESS_KEY' -e TF_VAR_secret_key='YOUR_AWS_SECRET_KEY' -e TF_VAR_region='YOUR_AWS_REGION' -e TF_VAR_bucket_name='YOUR_BUCKET_NAME' 468766/aws-s3-terraform
```

## 🔐 Security Best Practices
- **Do not hardcode secrets** in the Dockerfile or in other files
- Use credentials, region and bucket name in single quote while running the container via docker run
- Give unique name to s3 bucket while running docker

## 📁 Files Included
- `main.tf`: Terraform configuration to create the S3 bucket
- `variable.tf`: Input variable definitions
- `entrypoint.sh`: Script to run Terraform commands

## 🤝 Contributing
Feel free to fork the repo and submit pull requests.

## 📬 Contact
For questions or support, reach out to [sahniamitkumar2017@gmail.com]
