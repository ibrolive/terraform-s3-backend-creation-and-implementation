# use this block of code to keep terraform state file on s3 and lock state with dynamo db

#terraform {
#    backend "s3" {
#        encrypt = true
#        bucket = "terraform-remote-state-storage-s3-xyz123"
#        dynamodb_table = "dynamodb-terraform-state-lock-xyz123"
#        region = "us-west-2"
#        key = "terraform.tfstate"
#    }
#}