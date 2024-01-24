provider "aws" {
  region = var.region
}

resource "aws_iam_role" "ecs_execution_role" {
  name = "${var.name}_ecs_execution_role"
  assume_role_policy = file("iam/role/ecs_execution_role.json")
}

resource "aws_ecr_repository" "sonarqube" {
  name = "sonarqube"
}

resource "aws_cloudwatch_log_group" "ecs_log_group" {
  name = "/ecs/${var.name}"
}

resource "aws_ecs_task_definition" "sonarqube" {
  family                   = var.name
  network_mode             = "awsvpc"
  execution_role_arn       = aws_iam_role.ecs_execution_role.arn

  container_definitions = templatefile("container/definitions/mikes_sonar_container_definitions.json", {
    NAME                        = "${var.name}-container"
    LOG_GROUP_NAME              = aws_cloudwatch_log_group.ecs_log_group.name
  })
}