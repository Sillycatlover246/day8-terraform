resource "aws_s3_bucket" "this" {
 bucket = "${var.bucket_name}-${terraform.workspace}"

tags = {
 Enviroment = terraform.workspace
 Purpose    = var.purpose
 }
}
