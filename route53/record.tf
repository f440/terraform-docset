resource "aws_route53_record" "skillsand-me-A-0" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "skillsand.me"
    type    = "A"
    set_identifier = "Primary"

    alias {
        name    = "lb-001-368705549.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z14GRHDCWA56QT"
        evaluate_target_health = true
    }

    failover_routing_policy {
        type = "PRIMARY"
    }
}

resource "aws_route53_record" "skillsand-me-A-1" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "skillsand.me"
    type    = "A"
    set_identifier = "Secondary"

    alias {
        name    = "s3-website-ap-northeast-1.amazonaws.com"
        zone_id = "Z2M4EHUR26P7ZW"
        evaluate_target_health = false
    }

    failover_routing_policy {
        type = "SECONDARY"
    }
}

resource "aws_route53_record" "skillsand-me-MX" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "skillsand.me"
    type    = "MX"
    records = ["10 mail34.heteml.jp"]
    ttl     = "300"

}

resource "aws_route53_record" "skillsand-me-NS" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "skillsand.me"
    type    = "NS"
    records = ["ns-1966.awsdns-53.co.uk.", "ns-705.awsdns-24.net.", "ns-281.awsdns-35.com.", "ns-1060.awsdns-04.org."]
    ttl     = "172800"

}

resource "aws_route53_record" "skillsand-me-SOA" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "skillsand.me"
    type    = "SOA"
    records = ["ns-1966.awsdns-53.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "skillsand-me-TXT" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "skillsand.me"
    type    = "TXT"
    records = ["v=spf1 ip4:182.48.26.71 ip4:210.188.215.109 include:spf.mandrillapp.com ~all"]
    ttl     = "300"

}

resource "aws_route53_record" "mandrill-_domainkey-skillsand-me-TXT" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "mandrill._domainkey.skillsand.me"
    type    = "TXT"
    records = ["v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCrLHiExVd55zd/IQ/J/mRwSRMAocV/hMB3jXwaHH36d9NaVynQFYV8NaWi69c1veUtRzGt7yAioXqLj7Z4TeEUoOLgrKsn8YnckGs9i3B3tVFB+Ch/4mPhXWiNfNdynHWBcPcbJ8kjEQ2U8y78dHZj1YeRXXVvWob2OaKynO8/lQIDAQAB;"]
    ttl     = "300"

}

resource "aws_route53_record" "staging-skillsand-me-A-0" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "staging.skillsand.me"
    type    = "A"
    set_identifier = "staging-Primary"

    alias {
        name    = "lb-002-671607410.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z14GRHDCWA56QT"
        evaluate_target_health = true
    }

    failover_routing_policy {
        type = "PRIMARY"
    }
}

resource "aws_route53_record" "staging-skillsand-me-A-1" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "staging.skillsand.me"
    type    = "A"
    set_identifier = "staging-Secondary"

    alias {
        name    = "s3-website-ap-northeast-1.amazonaws.com"
        zone_id = "Z2M4EHUR26P7ZW"
        evaluate_target_health = false
    }

    failover_routing_policy {
        type = "SECONDARY"
    }
}

resource "aws_route53_record" "test-skillsand-me-A" {
    zone_id = "Z3VTE8UQITGPOD"
    name    = "test.skillsand.me"
    type    = "A"

    alias {
        name    = "s3-website-ap-northeast-1.amazonaws.com"
        zone_id = "Z2M4EHUR26P7ZW"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "y-knot-jp-A" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "y-knot.jp"
    type    = "A"

    alias {
        name    = "awseb-e-f-awsebloa-frzel35gze7n-543220949.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z2YN17T5R711GT"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "y-knot-jp-MX" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "y-knot.jp"
    type    = "MX"
    records = ["10 mx.zohomail.com", "20 mx2.zohomail.com"]
    ttl     = "300"

}

resource "aws_route53_record" "y-knot-jp-NS" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "y-knot.jp"
    type    = "NS"
    records = ["ns-465.awsdns-58.com.", "ns-1674.awsdns-17.co.uk.", "ns-602.awsdns-11.net.", "ns-1318.awsdns-36.org."]
    ttl     = "172800"

}

resource "aws_route53_record" "y-knot-jp-SOA" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "y-knot.jp"
    type    = "SOA"
    records = ["ns-465.awsdns-58.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "y-knot-jp-TXT" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "y-knot.jp"
    type    = "TXT"
    records = ["v=spf1 include:spf.mandrillapp.com ?all"]
    ttl     = "300"

}

resource "aws_route53_record" "mandrill-_domainkey-y-knot-jp-TXT" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "mandrill._domainkey.y-knot.jp"
    type    = "TXT"
    records = ["v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCrLHiExVd55zd/IQ/J/mRwSRMAocV/hMB3jXwaHH36d9NaVynQFYV8NaWi69c1veUtRzGt7yAioXqLj7Z4TeEUoOLgrKsn8YnckGs9i3B3tVFB+Ch/4mPhXWiNfNdynHWBcPcbJ8kjEQ2U8y78dHZj1YeRXXVvWob2OaKynO8/lQIDAQAB;"]
    ttl     = "300"

}

resource "aws_route53_record" "bastion-y-knot-jp-A" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "bastion.y-knot.jp"
    type    = "A"
    records = ["54.178.149.159"]
    ttl     = "300"

}

resource "aws_route53_record" "bastion-local-y-knot-jp-A" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "bastion.local.y-knot.jp"
    type    = "A"
    records = ["10.0.0.144"]
    ttl     = "300"

}

resource "aws_route53_record" "db-local-y-knot-jp-CNAME" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "db.local.y-knot.jp"
    type    = "CNAME"
    records = ["yd1ljk5ex5xrghv.cdsshzjynb4i.ap-northeast-1.rds.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "redis-local-y-knot-jp-CNAME" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "redis.local.y-knot.jp"
    type    = "CNAME"
    records = ["yknot-elasticache.eigvkv.0001.apne1.cache.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "lonjfmsnsj7g-y-knot-jp-CNAME" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "lonjfmsnsj7g.y-knot.jp"
    type    = "CNAME"
    records = ["gv-tlkovupjaj5el6.dv.googlehosted.com"]
    ttl     = "300"

}

resource "aws_route53_record" "ops-y-knot-jp-A" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "ops.y-knot.jp"
    type    = "A"

    alias {
        name    = "yknot-ops-lb-822993030.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z2YN17T5R711GT"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "staging-y-knot-jp-A" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "staging.y-knot.jp"
    type    = "A"

    alias {
        name    = "awseb-e-w-awsebloa-1dg2whr480r4a-2020563221.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z2YN17T5R711GT"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "staging-y-knot-jp-TXT" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "staging.y-knot.jp"
    type    = "TXT"
    records = ["loaderio=d119f5affbc4a593d14ecaefbd372fb6"]
    ttl     = "300"

}

resource "aws_route53_record" "www-y-knot-jp-A" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "www.y-knot.jp"
    type    = "A"

    alias {
        name    = "awseb-e-f-awsebloa-frzel35gze7n-543220949.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z2YN17T5R711GT"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "zb14402850-y-knot-jp-CNAME" {
    zone_id = "Z39M8SG96Z7R1L"
    name    = "zb14402850.y-knot.jp"
    type    = "CNAME"
    records = ["zmverify.zoho.com"]
    ttl     = "300"

}

resource "aws_route53_record" "hanica-me-MX" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "hanica.me"
    type    = "MX"
    records = ["10 mx.zoho.com", "20 mx2.zoho.com"]
    ttl     = "300"

}

resource "aws_route53_record" "hanica-me-NS" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "hanica.me"
    type    = "NS"
    records = ["ns-80.awsdns-10.com.", "ns-946.awsdns-54.net.", "ns-1800.awsdns-33.co.uk.", "ns-1277.awsdns-31.org."]
    ttl     = "172800"

}

resource "aws_route53_record" "hanica-me-SOA" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "hanica.me"
    type    = "SOA"
    records = ["ns-80.awsdns-10.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "hanica-me-TXT" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "hanica.me"
    type    = "TXT"
    records = ["zoho-verification=zb14832292.zmverify.zoho.com"]
    ttl     = "300"

}

resource "aws_route53_record" "asterisk-hanica-me-CNAME" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "*.hanica.me"
    type    = "CNAME"
    records = ["hanica-staging.elasticbeanstalk.com"]
    ttl     = "60"

}

resource "aws_route53_record" "jenkins-hanica-me-A" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "jenkins.hanica.me"
    type    = "A"

    alias {
        name    = "dualstack.new-internal-2093570042.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z14GRHDCWA56QT"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "bastion-local-hanica-me-A" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "bastion.local.hanica.me"
    type    = "A"
    records = ["54.178.169.42"]
    ttl     = "300"

}

resource "aws_route53_record" "new-rundeck-hanica-me-A" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "new-rundeck.hanica.me"
    type    = "A"

    alias {
        name    = "dualstack.new-internal-2093570042.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z14GRHDCWA56QT"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "rundeck-hanica-me-CNAME" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "rundeck.hanica.me"
    type    = "CNAME"
    records = ["internal-1687960478.ap-northeast-1.elb.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "vpn-hanica-me-A" {
    zone_id = "ZTGHQY50Y0K1C"
    name    = "vpn.hanica.me"
    type    = "A"
    records = ["54.65.102.6"]
    ttl     = "300"

}

resource "aws_route53_record" "daruma-space-MX" {
    zone_id = "Z2IE6RW5PM57F5"
    name    = "daruma.space"
    type    = "MX"
    records = ["10 mx.zoho.com.", "20 mx2.zoho.com.", "30 mx3.zoho.com."]
    ttl     = "300"

}

resource "aws_route53_record" "daruma-space-NS" {
    zone_id = "Z2IE6RW5PM57F5"
    name    = "daruma.space"
    type    = "NS"
    records = ["ns-1119.awsdns-11.org.", "ns-1888.awsdns-44.co.uk.", "ns-802.awsdns-36.net.", "ns-44.awsdns-05.com."]
    ttl     = "172800"

}

resource "aws_route53_record" "daruma-space-SOA" {
    zone_id = "Z2IE6RW5PM57F5"
    name    = "daruma.space"
    type    = "SOA"
    records = ["ns-1119.awsdns-11.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "asterisk-daruma-space-CNAME" {
    zone_id = "Z2IE6RW5PM57F5"
    name    = "*.daruma.space"
    type    = "CNAME"
    records = ["hanica-sandbox.ap-northeast-1.elasticbeanstalk.com"]
    ttl     = "300"

}

resource "aws_route53_record" "s1-_domainkey-daruma-space-CNAME" {
    zone_id = "Z2IE6RW5PM57F5"
    name    = "s1._domainkey.daruma.space"
    type    = "CNAME"
    records = ["s1.domainkey.u2787976.wl227.sendgrid.net"]
    ttl     = "300"

}

resource "aws_route53_record" "s2-_domainkey-daruma-space-CNAME" {
    zone_id = "Z2IE6RW5PM57F5"
    name    = "s2._domainkey.daruma.space"
    type    = "CNAME"
    records = ["s2.domainkey.u2787976.wl227.sendgrid.net"]
    ttl     = "300"

}

resource "aws_route53_record" "app-daruma-space-CNAME" {
    zone_id = "Z2IE6RW5PM57F5"
    name    = "app.daruma.space"
    type    = "CNAME"
    records = ["hanica-sandbox.ap-northeast-1.elasticbeanstalk.com"]
    ttl     = "300"

}

resource "aws_route53_record" "em-daruma-space-CNAME" {
    zone_id = "Z2IE6RW5PM57F5"
    name    = "em.daruma.space"
    type    = "CNAME"
    records = ["u2787976.wl227.sendgrid.net"]
    ttl     = "300"

}

resource "aws_route53_record" "db-local-daruma-space-CNAME" {
    zone_id = "Z2IE6RW5PM57F5"
    name    = "db.local.daruma.space"
    type    = "CNAME"
    records = ["d4ag9znbvgrmjd.cdsshzjynb4i.ap-northeast-1.rds.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "smarthr-jp-A" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "smarthr.jp"
    type    = "A"
    records = ["133.130.16.158"]
    ttl     = "300"

}

resource "aws_route53_record" "smarthr-jp-MX" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "smarthr.jp"
    type    = "MX"
    records = ["5\talt1.aspmx.l.google.com.", "5\talt2.aspmx.l.google.com.", "10\talt3.aspmx.l.google.com.", "10\talt4.aspmx.l.google.com.", "1\taspmx.l.google.com."]
    ttl     = "300"

}

resource "aws_route53_record" "smarthr-jp-NS" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "smarthr.jp"
    type    = "NS"
    records = ["ns-103.awsdns-12.com.", "ns-1432.awsdns-51.org.", "ns-1603.awsdns-08.co.uk.", "ns-655.awsdns-17.net."]
    ttl     = "172800"

}

resource "aws_route53_record" "smarthr-jp-SOA" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "smarthr.jp"
    type    = "SOA"
    records = ["ns-103.awsdns-12.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "smarthr-jp-TXT" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "smarthr.jp"
    type    = "TXT"
    records = ["google-site-verification=H_4Xzz8vDzjNoCyuJyo5EmkAOTTt-E5Hg3BULxNnzMQ", "v=spf1 include:mktomail.com -all", "v=spf1 include:servers.mcsv.net ?all"]
    ttl     = "300"

}

resource "aws_route53_record" "0e2ec3229d46ff2dbc9d2240f2cc8b44-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "0e2ec3229d46ff2dbc9d2240f2cc8b44.smarthr.jp"
    type    = "CNAME"
    records = ["verify.bing.com"]
    ttl     = "300"

}

resource "aws_route53_record" "o1-sg-smarthr-jp-A" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "o1.sg.smarthr.jp"
    type    = "A"
    records = ["168.245.113.131"]
    ttl     = "300"

}

resource "aws_route53_record" "asterisk-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "*.smarthr.jp"
    type    = "CNAME"
    records = ["hanica-production.elasticbeanstalk.com"]
    ttl     = "60"

}

resource "aws_route53_record" "intercom-_domainkey-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "intercom._domainkey.smarthr.jp"
    type    = "CNAME"
    records = ["a997f72a-4d4a-4fde-bef1-95bbd6b6c643.dkim.intercom.io"]
    ttl     = "300"

}

resource "aws_route53_record" "m1-_domainkey-smarthr-jp-TXT" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "m1._domainkey.smarthr.jp"
    type    = "TXT"
    records = ["v=DKIM1;k=rsa;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCUMniujh1X0S0c0Ujf/UyACMkvQfkrBpN7vlonzPEbk12T4U83swCaqeKiHWJoLfnHzWc/Gyoaazd2Fo2yZBs/ximtqmVFLbTs2Sn5e4Q2CB1STc2dJYR1J9q6Wo+Hk9dXooZB/j1GFsg1lJlOajzLyrmNRiFg8G2VUZLWYtaJPQIDAQAB"]
    ttl     = "300"

}

resource "aws_route53_record" "k1-_domainkey-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "k1._domainkey.smarthr.jp"
    type    = "CNAME"
    records = ["dkim.mcsv.net"]
    ttl     = "300"

}

resource "aws_route53_record" "s1-_domainkey-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "s1._domainkey.smarthr.jp"
    type    = "CNAME"
    records = ["s1.domainkey.u2787976.wl227.sendgrid.net"]
    ttl     = "300"

}

resource "aws_route53_record" "s2-_domainkey-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "s2._domainkey.smarthr.jp"
    type    = "CNAME"
    records = ["s2.domainkey.u2787976.wl227.sendgrid.net"]
    ttl     = "300"

}

resource "aws_route53_record" "app-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "app.smarthr.jp"
    type    = "CNAME"
    records = ["hanica-production.elasticbeanstalk.com"]
    ttl     = "60"

}

resource "aws_route53_record" "developer-smarthr-jp-A" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "developer.smarthr.jp"
    type    = "A"

    alias {
        name    = "d1221gzek7j9eo.cloudfront.net"
        zone_id = "Z2FDTNDATAQYW2"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "em-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "em.smarthr.jp"
    type    = "CNAME"
    records = ["u2787976.wl227.sendgrid.net"]
    ttl     = "300"

}

resource "aws_route53_record" "envy-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "envy.smarthr.jp"
    type    = "CNAME"
    records = ["envy.smarthr.jp.herokudns.com"]
    ttl     = "300"

}

resource "aws_route53_record" "mag-smarthr-jp-A" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "mag.smarthr.jp"
    type    = "A"
    records = ["150.95.225.254"]
    ttl     = "300"

}

resource "aws_route53_record" "success-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "success.smarthr.jp"
    type    = "CNAME"
    records = ["mkto-ab220095.com"]
    ttl     = "300"

}

resource "aws_route53_record" "tech-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "tech.smarthr.jp"
    type    = "CNAME"
    records = ["smarthr.heteml.jp"]
    ttl     = "300"

}

resource "aws_route53_record" "www-smarthr-jp-CNAME" {
    zone_id = "Z38IZYREYRKWXV"
    name    = "www.smarthr.jp"
    type    = "CNAME"
    records = ["smarthr.jp"]
    ttl     = "300"

}

resource "aws_route53_record" "kokeshi-space-A" {
    zone_id = "Z3NST012CEMS3T"
    name    = "kokeshi.space"
    type    = "A"

    alias {
        name    = "dualstack.kokeshi-1122525354.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z14GRHDCWA56QT"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "kokeshi-space-MX" {
    zone_id = "Z3NST012CEMS3T"
    name    = "kokeshi.space"
    type    = "MX"
    records = ["10 mx.zoho.com.", "20 mx2.zoho.com"]
    ttl     = "300"

}

resource "aws_route53_record" "kokeshi-space-NS" {
    zone_id = "Z3NST012CEMS3T"
    name    = "kokeshi.space"
    type    = "NS"
    records = ["ns-2023.awsdns-60.co.uk.", "ns-1301.awsdns-34.org.", "ns-500.awsdns-62.com.", "ns-807.awsdns-36.net."]
    ttl     = "172800"

}

resource "aws_route53_record" "kokeshi-space-SOA" {
    zone_id = "Z3NST012CEMS3T"
    name    = "kokeshi.space"
    type    = "SOA"
    records = ["ns-2023.awsdns-60.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "asterisk-kokeshi-space-A" {
    zone_id = "Z3NST012CEMS3T"
    name    = "*.kokeshi.space"
    type    = "A"

    alias {
        name    = "dualstack.kokeshi-1122525354.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z14GRHDCWA56QT"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "api-kokeshi-space-CNAME" {
    zone_id = "Z3NST012CEMS3T"
    name    = "api.kokeshi.space"
    type    = "CNAME"
    records = ["kokeshi-kojin-dev.ap-northeast-1.elasticbeanstalk.com"]
    ttl     = "300"

}

resource "aws_route53_record" "app-kokeshi-space-A" {
    zone_id = "Z3NST012CEMS3T"
    name    = "app.kokeshi.space"
    type    = "A"

    alias {
        name    = "dualstack.kokeshi-1122525354.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z14GRHDCWA56QT"
        evaluate_target_health = true
    }
}

resource "aws_route53_record" "zb15041563-kokeshi-space-CNAME" {
    zone_id = "Z3NST012CEMS3T"
    name    = "zb15041563.kokeshi.space"
    type    = "CNAME"
    records = ["zmverify.zoho.com"]
    ttl     = "300"

}

resource "aws_route53_record" "smarthr-co-jp-A" {
    zone_id = "Z3DXBKTQH0S7UN"
    name    = "smarthr.co.jp"
    type    = "A"
    records = ["133.130.23.39"]
    ttl     = "300"

}

resource "aws_route53_record" "smarthr-co-jp-MX" {
    zone_id = "Z3DXBKTQH0S7UN"
    name    = "smarthr.co.jp"
    type    = "MX"
    records = ["5 alt1.aspmx.l.google.com.", "5 alt2.aspmx.l.google.com.", "1 aspmx.l.google.com.", "10 aspmx2.googlemail.com.", "10 aspmx3.googlemail.com."]
    ttl     = "3600"

}

resource "aws_route53_record" "smarthr-co-jp-NS" {
    zone_id = "Z3DXBKTQH0S7UN"
    name    = "smarthr.co.jp"
    type    = "NS"
    records = ["ns-209.awsdns-26.com.", "ns-970.awsdns-57.net.", "ns-1194.awsdns-21.org.", "ns-1786.awsdns-31.co.uk."]
    ttl     = "172800"

}

resource "aws_route53_record" "smarthr-co-jp-SOA" {
    zone_id = "Z3DXBKTQH0S7UN"
    name    = "smarthr.co.jp"
    type    = "SOA"
    records = ["ns-209.awsdns-26.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "smarthr-co-jp-TXT" {
    zone_id = "Z3DXBKTQH0S7UN"
    name    = "smarthr.co.jp"
    type    = "TXT"
    records = ["google-site-verification=xjPWNP88eZtrZ9uPTEPF7DjzT_ITudjnC3PfpnlYJh8", "MS=ms20000937"]
    ttl     = "3600"

}

resource "aws_route53_record" "google-_domainkey-smarthr-co-jp-TXT" {
    zone_id = "Z3DXBKTQH0S7UN"
    name    = "google._domainkey.smarthr.co.jp"
    type    = "TXT"
    records = ["v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCQMl7yy041apU/MuwHhfKGhWdfaqzrfrboAF2PSXhFb4RxfEb3X4Lz/MoJp0xlGOlLSAt0WUyGc82ThzNwr8Er5BWQXHnkcXgaBe7+gJjYb+tZHQyiiLuXgBOEzR3fZmCHIzyq5XKPTFpspxahFNtZXZ3C6qdeFCxv0NouRV43TwIDAQAB"]
    ttl     = "3600"

}

resource "aws_route53_record" "ue3v7tkoinyk-smarthr-co-jp-CNAME" {
    zone_id = "Z3DXBKTQH0S7UN"
    name    = "ue3v7tkoinyk.smarthr.co.jp"
    type    = "CNAME"
    records = ["gv-mgv2n6yufi5kt7.dv.googlehosted.com."]
    ttl     = "3600"

}

resource "aws_route53_record" "kufuinc-com-A" {
    zone_id = "Z2FX40IGX7ZAHW"
    name    = "kufuinc.com"
    type    = "A"
    records = ["157.7.107.60"]
    ttl     = "300"

}

resource "aws_route53_record" "kufuinc-com-MX" {
    zone_id = "Z2FX40IGX7ZAHW"
    name    = "kufuinc.com"
    type    = "MX"
    records = ["5 alt1.aspmx.l.google.com.", "5 alt2.aspmx.l.google.com.", "1 aspmx.l.google.com.", "10 aspmx2.googlemail.com.", "10 aspmx3.googlemail.com."]
    ttl     = "300"

}

resource "aws_route53_record" "kufuinc-com-NS" {
    zone_id = "Z2FX40IGX7ZAHW"
    name    = "kufuinc.com"
    type    = "NS"
    records = ["ns-1697.awsdns-20.co.uk.", "ns-272.awsdns-34.com.", "ns-1310.awsdns-35.org.", "ns-702.awsdns-23.net."]
    ttl     = "172800"

}

resource "aws_route53_record" "kufuinc-com-SOA" {
    zone_id = "Z2FX40IGX7ZAHW"
    name    = "kufuinc.com"
    type    = "SOA"
    records = ["ns-1697.awsdns-20.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "kufuinc-com-TXT" {
    zone_id = "Z2FX40IGX7ZAHW"
    name    = "kufuinc.com"
    type    = "TXT"
    records = ["google-site-verification=V7HZ3jv3bWobqtapbWehiGE0IqFyltIZpHIOQZ7OdIY", "MS=ms48610331"]
    ttl     = "300"

}

resource "aws_route53_record" "hanica-local-NS" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "hanica.local"
    type    = "NS"
    records = ["ns-1536.awsdns-00.co.uk.", "ns-0.awsdns-00.com.", "ns-1024.awsdns-00.org.", "ns-512.awsdns-00.net."]
    ttl     = "172800"

}

resource "aws_route53_record" "hanica-local-SOA" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "hanica.local"
    type    = "SOA"
    records = ["ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "db-docker-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "db.docker.hanica.local"
    type    = "CNAME"
    records = ["docker-staging.cdsshzjynb4i.ap-northeast-1.rds.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "redis-persistent-docker-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "redis.persistent.docker.hanica.local"
    type    = "CNAME"
    records = ["hanicastg-persistent.eigvkv.0001.apne1.cache.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "redis-volatile-docker-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "redis.volatile.docker.hanica.local"
    type    = "CNAME"
    records = ["hanicastg-volatile.eigvkv.0001.apne1.cache.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "db-prod-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "db.prod.hanica.local"
    type    = "CNAME"
    records = ["hanica-production-0.cdsshzjynb4i.ap-northeast-1.rds.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "redis-persistent-prod-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "redis.persistent.prod.hanica.local"
    type    = "CNAME"
    records = ["hanica-persistent.eigvkv.0001.apne1.cache.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "redis-volatile-prod-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "redis.volatile.prod.hanica.local"
    type    = "CNAME"
    records = ["hanica-volatile.eigvkv.0001.apne1.cache.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "production-aggregate-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "production-aggregate.hanica.local"
    type    = "CNAME"
    records = ["ip-10-0-200-208.ap-northeast-1.compute.internal"]
    ttl     = "300"

}

resource "aws_route53_record" "relay1-production-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "relay1-production.hanica.local"
    type    = "CNAME"
    records = ["ip-10-0-200-100.ap-northeast-1.compute.internal"]
    ttl     = "300"

}

resource "aws_route53_record" "relay1-staging-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "relay1-staging.hanica.local"
    type    = "CNAME"
    records = ["ip-10-0-200-129.ap-northeast-1.compute.internal"]
    ttl     = "300"

}

resource "aws_route53_record" "relay2-production-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "relay2-production.hanica.local"
    type    = "CNAME"
    records = ["ip-10-0-200-100.ap-northeast-1.compute.internal"]
    ttl     = "300"

}

resource "aws_route53_record" "relay2-staging-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "relay2-staging.hanica.local"
    type    = "CNAME"
    records = ["ip-10-0-200-129.ap-northeast-1.compute.internal"]
    ttl     = "300"

}

resource "aws_route53_record" "staging-aggregate-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "staging-aggregate.hanica.local"
    type    = "CNAME"
    records = ["ip-10-0-200-44.ap-northeast-1.compute.internal"]
    ttl     = "300"

}

resource "aws_route53_record" "db-staging-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "db.staging.hanica.local"
    type    = "CNAME"
    records = ["hanica-staging3.cdsshzjynb4i.ap-northeast-1.rds.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "redis-persistent-staging-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "redis.persistent.staging.hanica.local"
    type    = "CNAME"
    records = ["hanicastg-persistent.eigvkv.0001.apne1.cache.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "redis-volatile-staging-hanica-local-CNAME" {
    zone_id = "ZLIRD0XRN4QQM"
    name    = "redis.volatile.staging.hanica.local"
    type    = "CNAME"
    records = ["hanicastg-volatile.eigvkv.0001.apne1.cache.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "daruma-local-NS" {
    zone_id = "Z1YXIDFKK62OT2"
    name    = "daruma.local"
    type    = "NS"
    records = ["ns-1536.awsdns-00.co.uk.", "ns-0.awsdns-00.com.", "ns-1024.awsdns-00.org.", "ns-512.awsdns-00.net."]
    ttl     = "172800"

}

resource "aws_route53_record" "daruma-local-SOA" {
    zone_id = "Z1YXIDFKK62OT2"
    name    = "daruma.local"
    type    = "SOA"
    records = ["ns-1536.awsdns-00.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "db-sandbox-daruma-local-CNAME" {
    zone_id = "Z1YXIDFKK62OT2"
    name    = "db.sandbox.daruma.local"
    type    = "CNAME"
    records = ["hanica-sandbox.cdsshzjynb4i.ap-northeast-1.rds.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "redis-persistent-sandbox-daruma-local-CNAME" {
    zone_id = "Z1YXIDFKK62OT2"
    name    = "redis.persistent.sandbox.daruma.local"
    type    = "CNAME"
    records = ["smarthr-sandbox.eigvkv.0001.apne1.cache.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "redis-volatile-sandbox-daruma-local-CNAME" {
    zone_id = "Z1YXIDFKK62OT2"
    name    = "redis.volatile.sandbox.daruma.local"
    type    = "CNAME"
    records = ["smarthr-sandbox.eigvkv.0001.apne1.cache.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "rumpes-co-uk-NS" {
    zone_id = "Z105MD7LRN2YR3"
    name    = "rumpes.co.uk"
    type    = "NS"
    records = ["bella.ns.cloudflare.com.", "guy.ns.cloudflare.com."]
    ttl     = "300"

}

resource "aws_route53_record" "rumpes-co-uk-SOA" {
    zone_id = "Z105MD7LRN2YR3"
    name    = "rumpes.co.uk"
    type    = "SOA"
    records = ["ns-1309.awsdns-35.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "udemushi-com-MX" {
    zone_id = "Z2O12CF0N1E9JW"
    name    = "udemushi.com"
    type    = "MX"
    records = ["10 mx.zoho.com", "20 mx2.zoho.com"]
    ttl     = "300"

}

resource "aws_route53_record" "udemushi-com-NS" {
    zone_id = "Z2O12CF0N1E9JW"
    name    = "udemushi.com"
    type    = "NS"
    records = ["ns-1834.awsdns-37.co.uk.", "ns-1084.awsdns-07.org.", "ns-831.awsdns-39.net.", "ns-504.awsdns-63.com."]
    ttl     = "172800"

}

resource "aws_route53_record" "udemushi-com-SOA" {
    zone_id = "Z2O12CF0N1E9JW"
    name    = "udemushi.com"
    type    = "SOA"
    records = ["ns-1834.awsdns-37.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "udemushi-com-TXT" {
    zone_id = "Z2O12CF0N1E9JW"
    name    = "udemushi.com"
    type    = "TXT"
    records = ["zoho-verification=zb14972370.zmverify.zoho.com"]
    ttl     = "300"

}

resource "aws_route53_record" "asterisk-udemushi-com-A" {
    zone_id = "Z2O12CF0N1E9JW"
    name    = "*.udemushi.com"
    type    = "A"

    alias {
        name    = "hanica-prod-app.ap-northeast-1.elasticbeanstalk.com"
        zone_id = "Z1R25G3KIG2GBW"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "app-udemushi-com-A" {
    zone_id = "Z2O12CF0N1E9JW"
    name    = "app.udemushi.com"
    type    = "A"

    alias {
        name    = "hanica-prod-app.ap-northeast-1.elasticbeanstalk.com"
        zone_id = "Z1R25G3KIG2GBW"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "the-yellow-meads-of-asphodel-click-MX" {
    zone_id = "Z3J95TKFY9KJCT"
    name    = "the-yellow-meads-of-asphodel.click"
    type    = "MX"
    records = ["10 mx.zoho.com", "20 mx2.zoho.com"]
    ttl     = "300"

}

resource "aws_route53_record" "the-yellow-meads-of-asphodel-click-NS" {
    zone_id = "Z3J95TKFY9KJCT"
    name    = "the-yellow-meads-of-asphodel.click"
    type    = "NS"
    records = ["ns-1643.awsdns-13.co.uk.", "ns-31.awsdns-03.com.", "ns-777.awsdns-33.net.", "ns-1422.awsdns-49.org."]
    ttl     = "172800"

}

resource "aws_route53_record" "the-yellow-meads-of-asphodel-click-SOA" {
    zone_id = "Z3J95TKFY9KJCT"
    name    = "the-yellow-meads-of-asphodel.click"
    type    = "SOA"
    records = ["ns-1643.awsdns-13.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "the-yellow-meads-of-asphodel-click-TXT" {
    zone_id = "Z3J95TKFY9KJCT"
    name    = "the-yellow-meads-of-asphodel.click"
    type    = "TXT"
    records = ["zoho-verification=zb14990754.zmverify.zoho.com"]
    ttl     = "300"

}

resource "aws_route53_record" "asterisk-the-yellow-meads-of-asphodel-click-A" {
    zone_id = "Z3J95TKFY9KJCT"
    name    = "*.the-yellow-meads-of-asphodel.click"
    type    = "A"

    alias {
        name    = "hanica-staging-app.22pcpprwmz.ap-northeast-1.elasticbeanstalk.com"
        zone_id = "Z1R25G3KIG2GBW"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "app-the-yellow-meads-of-asphodel-click-A" {
    zone_id = "Z3J95TKFY9KJCT"
    name    = "app.the-yellow-meads-of-asphodel.click"
    type    = "A"

    alias {
        name    = "hanica-staging-app.22pcpprwmz.ap-northeast-1.elasticbeanstalk.com"
        zone_id = "Z1R25G3KIG2GBW"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "smarthr-test-the-yellow-meads-of-asphodel-click-CNAME" {
    zone_id = "Z3J95TKFY9KJCT"
    name    = "smarthr.test.the-yellow-meads-of-asphodel.click"
    type    = "CNAME"
    records = ["google.co.jp"]
    ttl     = "300"

}

resource "aws_route53_record" "smarthr-plus-NS" {
    zone_id = "Z1XLEN8BSTM9ZS"
    name    = "smarthr.plus"
    type    = "NS"
    records = ["ns-158.awsdns-19.com.", "ns-1374.awsdns-43.org.", "ns-808.awsdns-37.net.", "ns-1753.awsdns-27.co.uk."]
    ttl     = "172800"

}

resource "aws_route53_record" "smarthr-plus-SOA" {
    zone_id = "Z1XLEN8BSTM9ZS"
    name    = "smarthr.plus"
    type    = "SOA"
    records = ["ns-158.awsdns-19.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "keiyaku-smarthr-plus-CNAME" {
    zone_id = "Z1XLEN8BSTM9ZS"
    name    = "keiyaku.smarthr.plus"
    type    = "CNAME"
    records = ["keiyaku.smarthr.plus.herokudns.com"]
    ttl     = "300"

}

resource "aws_route53_record" "aoyagi-farm-NS" {
    zone_id = "Z2R8KLE7JC3PK7"
    name    = "aoyagi.farm"
    type    = "NS"
    records = ["ns-1203.awsdns-22.org.", "ns-672.awsdns-20.net.", "ns-110.awsdns-13.com.", "ns-1908.awsdns-46.co.uk."]
    ttl     = "172800"

}

resource "aws_route53_record" "aoyagi-farm-SOA" {
    zone_id = "Z2R8KLE7JC3PK7"
    name    = "aoyagi.farm"
    type    = "SOA"
    records = ["ns-1203.awsdns-22.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "oke-aoyagi-farm-CNAME" {
    zone_id = "Z2R8KLE7JC3PK7"
    name    = "oke.aoyagi.farm"
    type    = "CNAME"
    records = ["oke.aoyagi.farm.herokudns.com"]
    ttl     = "60"

}

resource "aws_route53_record" "staging-smarthr-lp-com-A" {
    zone_id = "ZTS5ADHRRDLJQ"
    name    = "staging-smarthr-lp.com"
    type    = "A"
    records = ["157.7.188.212"]
    ttl     = "300"

}

resource "aws_route53_record" "staging-smarthr-lp-com-NS" {
    zone_id = "ZTS5ADHRRDLJQ"
    name    = "staging-smarthr-lp.com"
    type    = "NS"
    records = ["ns-1845.awsdns-38.co.uk.", "ns-1146.awsdns-15.org.", "ns-817.awsdns-38.net.", "ns-467.awsdns-58.com."]
    ttl     = "172800"

}

resource "aws_route53_record" "staging-smarthr-lp-com-SOA" {
    zone_id = "ZTS5ADHRRDLJQ"
    name    = "staging-smarthr-lp.com"
    type    = "SOA"
    records = ["ns-1845.awsdns-38.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "jekins-staging-smarthr-lp-com-A" {
    zone_id = "ZTS5ADHRRDLJQ"
    name    = "jekins.staging-smarthr-lp.com"
    type    = "A"

    alias {
        name    = "dualstack.new-internal-2093570042.ap-northeast-1.elb.amazonaws.com"
        zone_id = "Z14GRHDCWA56QT"
        evaluate_target_health = false
    }
}

