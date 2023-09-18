# create database subnet group
resource "aws_db_subnet_group" "database_subnet_group" {
  name        = "database-subnet-group"
  subnet_ids  = [aws_subnet.private_data_subnet_az1.id, aws_subnet.private_data_subnet_az2.id]
  description = "subnets for database instance"

  tags = {
    Name = "${var.project_name}-${var.environment}-database subnet group"
  }
}

# get information about a database snapshot
data "aws_db_snapshot" "latest_db_snapshot" {
  db_snapshot_identifier = "arn:aws:rds:us-east-1:475771302907:snapshot:nest-application-db-id-snapshot"
  most_recent            = true
  snapshot_type          = "manual"
}

# launch an rds instance from a database snapshot
resource "aws_db_instance" "database_instance" {
  instance_class         = "db.t3.micro"
  skip_final_snapshot    = true
  availability_zone      = data.aws_availability_zones.available_zones.names[1]
  identifier             = "nest-app-db-id"
  snapshot_identifier    = data.aws_db_snapshot.latest_db_snapshot.id
  db_subnet_group_name   = aws_db_subnet_group.database_subnet_group.name
  multi_az               = false
  vpc_security_group_ids = [aws_security_group.database_security_group.id]
}