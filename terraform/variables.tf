# Bloco CIDR para VPC.
variable "vpc_cidr" {
  description = "O bloco CIDR para VPC."
  type        = string
  default     = "10.0.0.0/16"
}

# Flag boolean para ativar/desativar DNS na VPC. O padrão é true.
variable "vpc_dns_support" {
  description = "O suporte a DNS deve ser habilitado para a VPC"
  type        = bool
  default     = true
}

# Flag boolean para ativar/desativar DNS hostnames na VPC. O padrão é true.
variable "vpc_dns_hostnames" {
  description = "O suporte a nomes de host DNS deve ser habilitado para a VPC"
  type        = bool
  default     = true
}

# Uma lista de zonas de disponibilidade permitidas.
variable "availability_zone" {
  description = "Lista de zonas de disponibilidade permitidas."
  type        = list(any)
  default     = ["us-west-2a", "us-west-2c"]
}

# Flag boolean para mapear o IP público na inicialização para subnet public. O padrão é true.
variable "map_public_ip" {
  description = "Especifique true para indicar que as instâncias iniciadas na subnet devem receber um endereço IP público."
  type        = bool
  default     = true
}

# Variável para o bloco CIDR para a subnet public. 
variable "public_cidr_1" {
  description = "O bloco CIDR para a primeira subnet public."
  type        = string
  default     = "10.0.1.0/24"
}

# Variável para o bloco CIDR para a subnet public. 
variable "public_cidr_2" {
  description = "O bloco CIDR para a segunda subnet public."
  type        = string
  default     = "10.0.2.0/24"
}

# Variável para o bloco CIDR para a primeira subnet privada. 
variable "private_cidr_1" {
  description = "O bloco CIDR para a primeira subnet privada."
  type        = string
  default     = "10.0.3.0/24"
}

# Variável para o bloco CIDR para a segunda subnet privada. 
variable "private_cidr_2" {
  description = "O bloco CIDR para a segunda subnet privada."
  type        = string
  default     = "10.0.4.0/24"
}

# Essa variável define o número desejado de instâncias a serem executadas no cluster do ECS.
variable "desired_capacity" {
  description = "Número de instâncias a serem executadas no cluster do ECS."
  type        = number
  default     = 1
}

# Essa variável define o número máximo de instâncias a serem executadas no cluster do ECS.
variable "maximum_capacity" {
  description = "Número máximo de instâncias que podem ser executadas no cluster ECS."
  type        = number
  default     = 5
}

# Esta variável define o tipo de instância.
variable "instance_type" {
  description = "Tipo de instância do EC2 para configuração de execução do ECS."
  type        = string
  default     = "m5.large"
}

# Essa variável define o nome do serviço ECS.
variable "service_name" {
  description = "O nome do serviço ECS."
  type        = string
  default     = "musiclibrarypagarme"
}

# Esta variável define o URL da imagem ECR.
variable "ecs_image_url" {
  description = "A URL da imagem ECR desejada."
  type        = string
}

# Essa variável define o nome da tabela do DynamoDB usada pelo aplicativo de contêiner.
variable "dynamodb_table_name" {
  description = "O nome da tabela do DynamoDB."
  type        = string
  default     = "bestMusic"
}