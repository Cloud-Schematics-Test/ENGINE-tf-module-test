variable "sample_var" {
  description = "A sample_var to pass to the template."
  default     = "hello, hello"
}

variable "sleepy_time" {
  description = "How long our local-exec will take a nap."
  default     = 10
}

module "mymodule" {
  source = "github.com/Cloud-Schematics-Test/ENGINE-tf-cloudless-sleepy"
  sleepy_time = "${var.sleepy_time}"
  sample_var = "${var.sample_var}"
}
