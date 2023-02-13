# Bucket already exits in AWS
resource "aws_s3_bucket_object" "woody" {
  content = "/root/woody.jpg"
  key     = "woody.jpg"
  bucket  = "pixar-studios-2020"
}
