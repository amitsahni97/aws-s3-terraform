FROM hashicorp/terraform:latest

WORKDIR /app

# Copy Terraform configuration
COPY . /app


# Entry point script
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]  