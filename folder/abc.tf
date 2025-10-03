terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

######################################
# First ALB
######################################
resource "aws_lb" "aws_lb" {
  name               = "test-alb"
  load_balancer_type = "application"
}

resource "aws_lb_listener" "aws_lb_listener" {
  load_balancer_arn = aws_lb.aws_lb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:us-east-1:860454016470:certificate/322f8694-62f9-4e5a-b0ac-2e78dcc68e7c"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb_listener-1" {
  load_balancer_arn = aws_lb.aws_lb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:us-east-1:860454016470:certificate/322f8694-62f9-4e5a-b0ac-2e78dcc68e7c"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb_listener-3" {
  load_balancer_arn = aws_lb.aws_lb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb_listener-4" {
  load_balancer_arn = aws_lb.aws_lb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  default_action {
    type = "forward"
  }
}

######################################
# Second ALB
######################################
resource "aws_lb" "aws_lb2" {
  name               = "test-alb2"
  load_balancer_type = "application"
}

resource "aws_lb_listener" "aws_lb2_listener" {
  load_balancer_arn = aws_lb2.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:us-east-1:860454016470:certificate/322f8694-62f9-4e5a-b0ac-2e78dcc68e7c"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb2_listener-1" {
  load_balancer_arn = aws_lb2.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:us-east-1:860454016470:certificate/322f8694-62f9-4e5a-b0ac-2e78dcc68e7c"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb2_listener-3" {
  load_balancer_arn = aws_lb2.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb2_listener-4" {
  load_balancer_arn = aws_lb2.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  default_action {
    type = "forward"
  }
}

######################################
# Third ALB
######################################
resource "aws_lb" "aws_lb3" {
  name               = "test-alb3"
  load_balancer_type = "application"
}

resource "aws_lb_listener" "aws_lb3_listener" {
  load_balancer_arn = aws_lb3.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:us-east-1:860454016470:certificate/322f8694-62f9-4e5a-b0ac-2e78dcc68e7c"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb3_listener-1" {
  load_balancer_arn = aws_lb3.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:us-east-1:860454016470:certificate/322f8694-62f9-4e5a-b0ac-2e78dcc68e7c"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb3_listener-3" {
  load_balancer_arn = aws_lb3.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb3_listener-4" {
  load_balancer_arn = aws_lb3.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  default_action {
    type = "forward"
  }
}

######################################
# Sixth ALB
######################################
resource "aws_lb" "aws_lb6" {
  name               = "test-alb6"
  load_balancer_type = "application"
}

resource "aws_lb_listener" "aws_lb6_listener" {
  load_balancer_arn = aws_lb6.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:us-east-1:860454016470:certificate/322f8694-62f9-4e5a-b0ac-2e78dcc68e7c"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb6_listener-1" {
  load_balancer_arn = aws_lb6.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:us-east-1:860454016470:certificate/322f8694-62f9-4e5a-b0ac-2e78dcc68e7c"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb6_listener-3" {
  load_balancer_arn = aws_lb6.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type = "forward"
  }
}

resource "aws_lb_listener" "aws_lb6_listener-4" {
  load_balancer_arn = aws_lb6.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  default_action {
    type = "forward"
  }
}
