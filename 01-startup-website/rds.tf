# Create Database Subnet Group
# terraform aws db subnet group
resource "aws_db_subnet_group" "database-subnet-group" {
  name         = "database subnets"
  subnet_ids   = [aws_subnet.private-subnet-3.id, aws_subnet.private-subnet-4.id ]
  description  = "Subnets fof Database Instance"

  tags   = {
    Name =  "Database Subnets"
  }
}

# Get the Latest DB Snapshot
# terraform aws data db snapshot
data "aws_db_snapshot" "latest-db-snapshot" {
  db_snapshot_identifier =  "${var.database-snapshot-identifier}" # Create a variable of db snapshot identifier
  most_recent            = true
  snapshot_type          = manual
}

# Create Database Instance Restored from DB Snapshots
# terraform aws db instance
resource "aws_db_instance" "database-instance" {
  instance_class          = "${var.database-instance-class}" # Create a variable for the instance class
  skip_final_snapshot     = true
  availability_zone       = us-east-1a
  identifier              = "${var.database-instance-identifier}"  # Create a variable for this
  snapshot_identifier     = data.aws_db_snapshot.latest-db-snapshot.id
  db_subnet_group_name    = aws_db_subnet_group.database-subnet-group.name
  multi_az                = "${var.multi-az-deployment}"  # Create a variable
  vpc_security_group_ids  = "${var.aws_security_group.database-security-group.id}"
}