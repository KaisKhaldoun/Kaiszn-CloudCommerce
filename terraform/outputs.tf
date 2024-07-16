output "cluster_endpoint" {
  value = aws_eks_cluster.kaiszn_cluster.endpoint
}

output "cluster_security_group_id" {
  value = aws_eks_cluster.kaiszn_cluster.vpc_config[0].cluster_security_group_id
}

output "db_endpoint" {
  value = aws_db_instance.db_instance.endpoint
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.cdn.domain_name
}
