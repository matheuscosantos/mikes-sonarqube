variable "region" {
  type    = string
  default = "us-east-2"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0ffc09ae69916058b"
}

variable "infra_name" {
  type    = string
  default = "mikes"
}

variable "name" {
  type    = string
  default = "mikes-sonar"
}

variable "subnets" {
  type    = list(string)
  default = [
    "subnet-0c9e1d22c842d362b",
    "subnet-08e43d2d7fa2c463e"
  ]
}

variable "mikes_redis_cluster_name" {
  type    = string
  default = "mikes-redis-cluster"
}
