variable "vpc-cidr" {
 default = "10.0.0.0/16"
 description = "VPC CIDR Block"
 type = string
  
}


variable "public-subnet-1-cidr" {
 default = "10.0.0.0/24"
 description = "Public Subnet 1 CIDR Block"
 type = string
  
}


variable "public-subnet-2-cidr" {
 default = "10.0.1.0/24"
 description = "Public Subnet 2 CIDR Block"
 type = string
  
}


variable "private-subnet-1-cidr" {
 default = "10.0.2.0/24"
 description = "Private Subnet 1 CIDR Block"
 type = string
  
}


variable "private-subnet-2-cidr" {
 default = "10.0.3.0/24"
 description = "Private Subnet 2 CIDR Block"
 type = string
  
}

variable "private-subnet-3-cidr" {
 default = "10.0.4.0/24"
 description = "Private Subnet 3 CIDR Block"
 type = string
  
}


variable "private-subnet-4-cidr" {
 default = "10.0.5.0/24"
 description = "Private Subnet 4 CIDR Block"
 type = string
  
}

variable "ssh-location" {
 default = "0.0.0.0/0"
 description = "IP address that can SSH into the EC2 instance"
 type = string
  
}

# Database-snapshot-identifier obtained from already created RDS
variable "database-snapshot-identifier" {          
 default = "arn:aws----------------" # The arn of database-snapshot-identifier obtained from already created RDS
 description = "database snapshot arn"
 type = string
  
}

variable "database-instance-class" {
 default = "db.t2.micro"
 description = "The Database instance Type"
 type = string
  
}

variable "database-instance-identifier" {
 default = "mysql57db"  # This should be the same for the database that was created (Instance/Cluster Name)
 description = "The Database instance Identifier"
 type = string
  
}

variable "multi-az-deployment" {
 default = false  # false bacause no standby db will be created. However, in prod env, this will be true 
 description = "Create a Standby database instance"
 type = bool
  
}



