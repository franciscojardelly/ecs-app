variable "region" {
  type        = string
  description = "Região padrão para criação dos recursos"
}

variable "cluster_name" {
  type        = string
  description = "Nome do cluster ECS que será criado o serviço"
}

variable "service_name" {
  type        = string
  description = "Nome do serviço/app"
}

variable "service_port" {
  type        = number
  description = "Porta para exposição do serviço"
}

variable "service_cpu" {
  type        = number
  description = "Definição da quantidade de CPU"
}

variable "service_memory" {
  type        = number
  description = "Definição da quantidade de memoria"
}

variable "ssm_vpc_id" {
  type        = string
  description = "Busca o ID da VPC"
}

variable "ssm_listener" {
  type        = string
  description = "Busca o listener do ALB já criado na stack do cluster"
}

variable "ssm_private_subnet1" {
  type        = string
  description = "Busca o ID da subnet privada criado pela stack de network"
}

variable "ssm_private_subnet2" {
  type        = string
  description = "Busca o ID da subnet privada criado pela stack de network"
}

variable "ssm_private_subnet3" {
  type        = string
  description = "Busca o ID da subnet privada criado pela stack de network"
}

variable "environment_variables" {
  type        = list(any)
  description = "Nessa variável é possível passar variáveis para dentro do container"
}

variable "capabilities" {
  type = list(any)
}

variable "service_healthcheck" {
  type = map(any)
}

variable "service_launch_type" {
  type = string
}

variable "service_task_count" {
  type = number
}

variable "service_hosts" {
  type = list(string)
}

variable "scale_type" {
  type = string
}

variable "task_minimum" {
  type = number
}

variable "task_maximum" {
  type = number
}

# Autoscaling Out CPU
variable "scale_out_cpu_threshold" {
  type = number
}

variable "scale_out_adjustment" {
  type = number
}

variable "scale_out_comparison_operator" {
  type = string
}

variable "scale_out_statistic" {
  type = string
}

variable "scale_out_period" {
  type = number
}

variable "scale_out_evaluation_periods" {
  type = number
}

variable "scale_out_cooldown" {
  type = number
}

# Autoscaling IN de CPU
variable "scale_in_cpu_threshold" {
  type = number
}

variable "scale_in_adjustment" {
  type = number
}

variable "scale_in_comparison_operator" {
  type = string
}

variable "scale_in_statistic" {
  type = string
}

variable "scale_in_period" {
  type = number
}

variable "scale_in_evaluation_periods" {
  type = number
}

variable "scale_in_cooldown" {
  type = number
}