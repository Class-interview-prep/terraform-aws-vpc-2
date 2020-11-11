data "template_file" "output" {
  template = "${file("${path.module}/templates/output.tpl")}"
  vars = {

    ## VPC IDs
    vpc_id = "${module.vpc_fuchicorp.VPC_ID}"

    ## Public Subnets to output 
    public_subnet_1   = "${module.vpc_fuchicorp.Subnet1}"
    public_subnet_2   = "${module.vpc_fuchicorp.Subnet2}"
    public_subnet_3   = "${module.vpc_fuchicorp.Subnet3}"
    public_subnet_4   = "${module.vpc_fuchicorp.Subnet4}"

    ## Private Subnets to output
    private_subnet_1  = "${module.vpc_fuchicorp.Private_Subnet1}"
    private_subnet_2  = "${module.vpc_fuchicorp.Private_Subnet2}"
    private_subnet_3  = "${module.vpc_fuchicorp.Private_Subnet3}"
    private_subnet_4  = "${module.vpc_fuchicorp.Private_Subnet4}"

    ## Nat Gateway and Internet Gateway to outputs
    nat_gateway       = "${module.vpc_fuchicorp.ngw}"
    internet_gateway  = "${module.vpc_fuchicorp.IGW}"

    ## Two Security groups to outputs
    first_security_group = "${module.vpc_fuchicorp.web_sec_group}"
    second_security_group = "${module.vpc_fuchicorp.mysql_sec_group}"

  }
}

output "Your deployment information" {
  value = "${data.template_file.output.rendered}"
}  