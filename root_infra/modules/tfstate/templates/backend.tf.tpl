terraform {
  backend "s3" {
    region         = "${region}"
    bucket         = "${bucket}"
    key            = "${state_file}"
    %{~ if dynamodb_table != "" ~}
    dynamodb_table = "${dynamodb_table}"
    %{~ endif ~}
    profile        = "${profile}"
    role_arn       = "${role_arn}"
    encrypt        = "${encrypt}"
  }
}