variable "org_name" {
  type        = string
  description = "Intersight Organization name"
}
variable "policy_name" {
  type        = string
  description = "Name of the policy.  `_Network` and `_pod` will be added to the end of the name for the respective policies to be built."
}
variable "pod_cidr" {
  type        = string
  description = "Pod CIDR Block to be used to assign POD IP Addresses."
  default     = "100.65.0.0/16"
}
variable "service_cidr" {
  type        = string
  description = "Service CIDR Block used to assign cluster service IP addresses."
  default     = "100.64.0.0/24"
}
variable "cni" {
  type        = string
  description = "Supported CNI type. Currently we only support Calico.* Calico - Calico CNI plugin as described in https://github.com/projectcalico/cni-plugin."
  default     = "Calico"
}

variable "tags" {
  type        = list(map(string))
  default     = []
  description = "Tags to be associated with this object in Intersight."
}