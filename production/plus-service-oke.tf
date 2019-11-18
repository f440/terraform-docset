resource "aws_elasticache_replication_group" "plus-oke-production" {
  replication_group_id          = "oke-production"
  replication_group_description = "Redis instance for oke-production"

  number_cache_clusters      = 2
  node_type                  = "cache.m3.medium"
  automatic_failover_enabled = true
  auto_minor_version_upgrade = true
  engine                     = "redis"
  engine_version             = "4.0.10"
  port                       = 6379

  # Memo
  # 将来的には「aws_elasticache_subnet_group」リソースで作成したものに入れ替えたい
  subnet_group_name = "${var.plus_subnet_group_name}"

  # Memo
  # 将来的には「aws_security_group」リソースで作成したものに入れ替えたい
  security_group_ids = [
    "${var.sg-heroku-ps-redis}",
    "${var.sg-default}",
  ]

  parameter_group_name = "${aws_elasticache_parameter_group.oke-redis-40.name}"

  maintenance_window       = "tue:19:00-tue:20:00"
  snapshot_window          = "15:00-16:00"
  snapshot_retention_limit = "1"
}

resource "aws_elasticache_parameter_group" "oke-redis-40" {
  name        = "oke-redis-40"
  family      = "redis4.0"
  description = "Redis 4.0 parameter group for oke"
}

resource "aws_db_parameter_group" "oke-dbparamgroup" {
  name   = "oke-dbparamgroup"
  family = "postgres10"
  description = "oke-dbparamgroup"
}

resource "aws_subnet" "oke-external-1a" {
  vpc_id = "${var.vpc-hanica-new-vpc}"
  availability_zone = "ap-northeast-1a"
  cidr_block = "10.0.30.0/24"
  tags = {
    Name = "oke-external-1a"
  }
}

resource "aws_subnet" "oke-external-1c" {
  vpc_id = "${var.vpc-hanica-new-vpc}"
  availability_zone = "ap-northeast-1c"
  cidr_block = "10.0.31.0/24"
  tags = {
    Name = "oke-external-1c"
  }
}

resource "aws_subnet" "oke-internal-1a" {
  vpc_id = "${var.vpc-hanica-new-vpc}"
  availability_zone = "ap-northeast-1a"
  cidr_block = "10.0.32.0/24"
  tags = {
    Name = "oke-internal-1a"
  }
}

resource "aws_subnet" "oke-internal-1c" {
  vpc_id = "${var.vpc-hanica-new-vpc}"
  availability_zone = "ap-northeast-1c"
  cidr_block = "10.0.33.0/24"
  tags = {
    Name = "oke-internal-1c"
  }
}

resource "aws_route_table" "oke-internal-rt" {
  vpc_id = "${var.vpc-hanica-new-vpc}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.oke-natgw-a.id}"
  }

  tags = {
    Name = "oke-internal-rt"
  }
}

resource "aws_route_table" "oke-external-rt" {
  vpc_id = "${var.vpc-hanica-new-vpc}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${var.hanica-new-igw}"
  }

  tags = {
    Name = "oke-external-rt"
  }
}

resource "aws_nat_gateway" "oke-natgw-a" {
  allocation_id = "${aws_eip.oke-natgw.id}"
  subnet_id     = "${aws_subnet.oke-external-1a.id}"

  tags = {
    Name = "oke-natgw-a"
  }
}

resource "aws_eip" "oke-natgw" {
  tags = {
    Name = "oke-natgw"
  }
}
