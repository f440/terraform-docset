resource "aws_s3_bucket" "bak-20170208-smarthr-production" {
    bucket = "bak-20170208-smarthr-production"
    acl    = "private"
    force_destroy = ""
}

resource "aws_s3_bucket" "cf-templates-5sy5m8ovfkzr-ap-northeast-1" {
    bucket = "cf-templates-5sy5m8ovfkzr-ap-northeast-1"
    acl    = "private"
    force_destroy = ""
}

resource "aws_s3_bucket" "elasticbeanstalk-ap-northeast-1-736134917012" {
    bucket = "elasticbeanstalk-ap-northeast-1-736134917012"
    acl    = "private"
    force_destroy = ""
}

resource "aws_s3_bucket" "cloudtrail-test-kufu" {
    bucket = "cloudtrail-test-kufu"
    acl = "private"
    force_destroy = ""
}

resource "aws_s3_bucket" "hanica-logbucket-1ev0czxrupen3" {
    bucket = "hanica-logbucket-1ev0czxrupen3"
    acl    = "private"
    force_destroy = ""
}

resource "aws_s3_bucket" "hanica-logbucket-1ljc24gzg76i7" {
    bucket = "hanica-logbucket-1ljc24gzg76i7"
    acl    = "private"
    force_destroy = ""
}


resource "aws_s3_bucket" "hanica-logbucket-cxc8o6o2ehgm" {
    bucket = "hanica-logbucket-cxc8o6o2ehgm"
    acl    = "private"
    force_destroy = ""
}

resource "aws_s3_bucket" "hanica-logbucket-yy53p0g4qopp" {
    bucket = "hanica-logbucket-yy53p0g4qopp"
    acl    = "private"
    force_destroy = ""
}

resource "aws_s3_bucket" "kokeshi-elb-logs" {
    bucket = "kokeshi-elb-logs"
    acl    = "private"
    force_destroy = ""
}

resource "aws_s3_bucket" "kokeshi-space" {
    bucket = "kokeshi.space"
    acl    = "private"
    force_destroy = ""

    website {
      index_document = "index.html"
    }
}

resource "aws_s3_bucket" "smarthr-api-lp" {
    bucket = "smarthr-api-lp"
    acl    = "private"
    force_destroy = ""
}

resource "aws_s3_bucket" "yknot-staging" {
    bucket = "yknot-staging"
    acl    = "private"
    force_destroy = ""

    cors_rule {
      allowed_headers = ["Authorization", "Content-*", "Host", "*"]
      allowed_methods = ["GET", "HEAD"]
      allowed_origins = ["*"]
      max_age_seconds = 3000
    }
}

resource "aws_s3_bucket" "maintenance-smarthr" {
    bucket = "maintenance-smarthr"
    acl    = "private"
    force_destroy = ""

    website {
      index_document = "maintenance.html"
    }
}
