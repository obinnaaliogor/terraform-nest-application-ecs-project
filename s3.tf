# create an s3 bucket
resource "aws_s3_bucket" "env_file_bucket" {
  bucket = "${var.project_name}-${var.env_file_bucket_name}"
}

# upload the environment file from local computer into the s3 bucket
#your env file should have *.env meaning anything.env so b4 uploading it to s3
resource "aws_s3_object" "upload_env_file" {
  bucket = aws_s3_bucket.env_file_bucket.id #"${var.project_name}-${var.env_file_bucket_name}""
  key    = var.env_file_name                #Name of the object once it is in the bucket.
  source = var.env_file_location            #"./nest-app-github.env"
}