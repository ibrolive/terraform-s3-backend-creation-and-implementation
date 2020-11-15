resource "aws_s3_bucket" "terraform-state-storage-s3-xyz123" {
    bucket = "terraform-remote-state-storage-s3-xyz123"

    versioning {
        enabled = true
    }

    lifecycle {
        #prevent_destroy = true
    }

    force_destroy = true

    #tags {
    #    Name = "S3 Remote Terraform State Store"
    #}
}