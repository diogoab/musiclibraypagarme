# Bloco CIDR para VPC.
variable "vpc_cidr" {
  
  type        = string
  default     = "10.0.0.0/16"
}

# Flag boolean para ativar/desativar DNS na VPC. O padrão é true.
variable "vpc_dns_support" {
  
  type        = bool
  default     = true
}

# Flag boolean para ativar/desativar DNS hostnames na VPC. O padrão é true.
variable "vpc_dns_hostnames" {
  
  type        = bool
  default     = true
}

# Uma lista de zonas de disponibilidade permitidas.
variable "availability_zone" {
  
  type        = list(any)
  default     = ["us-west-2a", "us-west-2c"]
}

# Flag boolean para mapear o IP público na inicialização para subnet public. O padrão é true.
variable "map_public_ip" {
  
  type        = bool
  default     = true
}

# Variável para o bloco CIDR para a subnet public. 
variable "public_cidr_1" {
  
  type        = string
  default     = "10.0.1.0/24"
}

# Variável para o bloco CIDR para a subnet public. 
variable "public_cidr_2" {
  
  type        = string
  default     = "10.0.2.0/24"
}

# Variável para o bloco CIDR para a primeira subnet privada. 
variable "private_cidr_1" {
  
  type        = string
  default     = "10.0.3.0/24"
}

# Variável para o bloco CIDR para a segunda subnet privada. 
variable "private_cidr_2" {
  
  type        = string
  default     = "10.0.4.0/24"
}

# Essa variável define o número desejado de instâncias a serem executadas no cluster do ECS.
variable "desired_capacity" {
  
  type        = number
  default     = 1
}

# Essa variável define o número máximo de instâncias a serem executadas no cluster do ECS.
variable "maximum_capacity" {
  
  type        = number
  default     = 5
}

# Esta variável define o tipo de instância.
variable "instance_type" {
  
  type        = string
  default     = "m5.large"
}

# Essa variável define o nome do serviço ECS.
variable "service_name" {
  
  type        = string
  default     = "musiclibrarypagarme"
}

# Esta variável define o URL da imagem ECR.
variable "ecs_image_url" {
  
  type        = string
}

# Essa variável define o nome da tabela do DynamoDB usada pelo aplicativo de contêiner.
variable "dynamodb_table_name" {
  
  type        = string
  default     = "bestMusic"
}