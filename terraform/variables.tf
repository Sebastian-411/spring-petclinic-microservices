# Variables de configuración general
variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
  default     = "vetCare-rg"
}

variable "location" {
  description = "Ubicación donde se despliegan los recursos"
  type        = string
  default     = "westus"
}

variable "aks_cluster_name" {
  description = "Nombre del clúster de AKS"
  type        = string
  default     = "aks-vetCare-cluster"
}

variable "dns_prefix" {
  description = "Prefijo DNS para el clúster AKS"
  type        = string
  default     = "vetCare-aks"
}

# Configuración de la VNet
variable "vnet_name" {
  description = "Nombre de la VNet"
  type        = string
  default     = "aks-vnet"
}

variable "subnet_name" {
  description = "Nombre de la subred para AKS"
  type        = string
  default     = "aks-subnet"
}

# Configuración del pool de nodos
variable "node_pool_name" {
  description = "Nombre del pool de nodos"
  type        = string
  default     = "agentpool"
}

variable "node_count" {
  description = "Número de nodos"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "Tamaño de las máquinas virtuales"
  type        = string
  default     = "Standard_b2pls_v2"
}

# Tags para los recursos
variable "tags" {
  description = "Etiquetas aplicadas a los recursos"
  type        = map(string)
  default     = {
    environment = "Dev"
  }
}
