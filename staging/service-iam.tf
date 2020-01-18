##################################################
#
# Group
#
# * userをgroupに紐づけてIAMユーザーの用途を識別しやすくする
#
##################################################
resource "aws_iam_group" "plus-app" {
  name = "plus-app"
}

resource "aws_iam_group_membership" "plus-app" {
  name  = "plus-app"
  group = "${aws_iam_group.plus-app.name}"

  users = [
    "plus-service-oke-circleci",
    "${aws_iam_user.plus-service-jougo.name}",
    "plus-service-auto-maintenance-tool"
  ]
}

##################################################
#
# User
#
# * herokuで使用する際のクレデンシャルでIAMユーザーを作成する
#
##################################################
resource "aws_iam_user" "plus-service-jougo" {
  name          = "plus-service-jougo"
  force_destroy = "false"
}

resource "aws_iam_policy" "plus-service-jougo" {
  name   = "PlusServiceJougoPolicy"
  policy = "${file("./files/iam/policies/plus-service-jougo.json")}"
}

resource "aws_iam_policy_attachment" "plus-service-jougo" {
  name       = "plus-service-jougo"
  users      = ["${aws_iam_user.plus-service-jougo.name}"]
  policy_arn = "${aws_iam_policy.plus-service-jougo.arn}"
}
