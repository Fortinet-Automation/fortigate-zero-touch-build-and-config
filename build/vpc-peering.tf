resource "aws_vpc_peering_connection" "fortigate-fortimanager" {
	peer_vpc_id = var.peer_vpc_id
	vpc_id 	    = aws_vpc.fgtvm-vpc.id
	auto_accept = var.auto_accept
	accepter {
    allow_remote_vpc_dns_resolution = var.acceptor_allow_remote_vpc_dns_resolution
  }
  	requester {
    allow_remote_vpc_dns_resolution = var.requestor_allow_remote_vpc_dns_resolution
  }
}
