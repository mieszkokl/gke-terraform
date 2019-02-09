variable "project_id"
{
  default = ""
}

variable "credentials_location"
{
  default = ""
}

variable "zone"
{
  default = "europe-west3-a"
}

variable "container_name"
{
  default = "demo-container"
}

variable "initial_node_count"
{
  default = 3
}

variable "auth_user"
{
  default = "mr.yoda"
}

variable "auth_password"
{
  default = "adoy.rm.99652hcse8fy9"
}

variable "image"
{
  default = "gcr.io/ferrous-plating-224913/hello-app:v1"
}

variable "app_name"
{
  default = "DemoApp"
}
