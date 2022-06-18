output "bucket_name" {
  value = aws_s3_bucket.mytestbucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.mytestbucket.arn
}

output "bucket_domain_name" {
  value = aws_s3_bucket.mytestbucket.bucket_domain_name
}

output "ips_file_path" {
  value = "${aws_s3_bucket.mytestbucket.bucket}/${aws_s3_object.thisobject.key}"
}
