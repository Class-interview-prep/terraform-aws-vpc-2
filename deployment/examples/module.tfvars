module "consul" {
    source  = " git@github.com:hashicorp/example.git"
    environment                     =   ""
    region                          =   ""
    s3_bucket                       =	""
    s3_folder_region                =	""
    s3_folder_project               =   ""
    s3_folder_type                  =   ""
    s3_tfstate_file                 =   "vpc.tfstate"
    vpc_cidr_block  = ""
    subnet_ids = ["", ""]
    availability_zones = [ "", "", "" ]
    public_subnet_cidr_blocks = [ "", "", "" ]
    private_subnet_cidr_blocks = [ "", "", ""  ]
    security_group_ids = [""]
}

