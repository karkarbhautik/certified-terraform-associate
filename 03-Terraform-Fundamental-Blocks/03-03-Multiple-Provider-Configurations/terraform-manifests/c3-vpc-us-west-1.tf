# Resource Block to Create VPC in us-west-1
resource "aws_vpc" "toffaha_test2" {
  cidr_block = "10.0.0.0/16"
  provider = aws.aws-west-1
  tags = {
    "Name" = "toffaha_test2"
  }
}


/*
Additional Note: 
provider = <PROVIDER NAME>.<ALIAS>  # This is a Meta-Argument from Resources Section nothing but a Special Argument
*/
