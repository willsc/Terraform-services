resource "aws_instance" "web" {
  subnet = "${var.env == "production" ? var.prod_subnet : var.dev_subnet}"
}


output "foobar" {
   value = "${aws_instance.web.subnet}"

}

