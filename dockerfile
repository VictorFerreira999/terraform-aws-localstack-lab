# Dockerfile para Ambiente Terraform + LocalStack

# Base Image com Terraform
FROM hashicorp/terraform:1.7.5

# Instalar AWS CLI e dependências
RUN apk add --no-cache \
    python3 \
    py3-pip \
    bash \
    docker-cli \
    && pip3 install awscli localstack

# Criar diretório de trabalho
WORKDIR /app

# Copiar arquivos do projeto
COPY . .

# Instalar dependências Terraform
RUN terraform init

# Comando padrão ao iniciar o container
CMD ["bash"]
