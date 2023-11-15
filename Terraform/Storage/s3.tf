resource "aws_s3_bucket" "web" {
  bucket = "s3Webserver"

  tags = {
    Name        = "s3Webserver"
    Environment = "Dev"
  }
}