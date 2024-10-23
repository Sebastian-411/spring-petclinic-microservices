# Salida para obtener el archivo de configuración de kubeconfig
output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
  sensitive = true
  description = "Archivo kubeconfig para interactuar con el cluster AKS"
}

# Salida para obtener la configuración del dashboard de AKS
output "aks_dashboard" {
  value     = azurerm_kubernetes_cluster.aks_cluster.kube_admin_config_raw
  sensitive = true
  description = "Acceso al dashboard de Kubernetes"
}
