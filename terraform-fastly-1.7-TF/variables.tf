
variable "environment" {}


variable "foo" {
    default  = "foo1"

}


variable "foo2" {
    default  = "foo2"

}


variable "foobar" {
    type = "map"
      
     default = {

        dc1 =  ["slough1.com", "slough2.com"]

     }

}


variable "foobar1" {
    type = "map"

     default = {

        aws =  ["aws1.com", "aws2.com", "aws3.com", "aws4.com"]

     }

}


variable "foobar3" {
    type = "map"

     default = {

        dc2 =  ["docklands1.com", "docklands2.com"]

     }

}
