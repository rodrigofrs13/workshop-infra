# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table_association.rtbassoc-01b2fe2ddfac5825c:
resource "aws_route_table_association" "myrtbassociation" {
  count=var.mycount
  route_table_id = aws_route_table.rtb2-igw[count.index].id
  subnet_id      = aws_subnet.mypubsubnet[count.index].id
}