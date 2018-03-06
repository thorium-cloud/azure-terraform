FROM microsoft/azure-cli:latest

# =========================================
# Install Terraform
# =========================================
RUN wget -O terraform.zip https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip?_ga=2.73192662.499385597.1520258923-1772212836.1519292193 \
    && unzip terraform.zip \
    && chmod +x terraform \
    && cp terraform /bin/terraform

# =========================================
# Install Terragrunt
# =========================================

RUN wget -O terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v0.14.2/terragrunt_linux_amd64 \
    && chmod +x terragrunt \
    && cp terragrunt /bin/terragrunt
