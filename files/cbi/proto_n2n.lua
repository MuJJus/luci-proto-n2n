local map, section, net = ...

server = section:taboption("general", Value, "server", translate("Supernode server"))
server.datatype = "host"
server.rmempty = false

port = section:taboption("general", Value, "port", translate("Supernode port"))
port.datatype = "port"
port.rmempty = false

community = section:taboption("general", Value, "community", translate("Community"))
community.rmempty = false

key = section:taboption("general", Value, "key", translate("Key"))
key.password = true

mode = section:taboption("general", ListValue, "mode", translate("Mode"))
mode:value("static", "Static")
mode:value("dhcp", "DHCP")
mode.default = "static"

ipaddr = section:taboption("general", Value, "ipaddr", translate("IPv4 address"))
ipaddr.datatype = "ip4addr"
ipaddr.rmempty = false

netmask = section:taboption("general", Value, "netmask", translate("IPv4 netmask"))
netmask.datatype = "ip4addr"
netmask.placeholder = "255.255.255.0"
netmask.rmempty = false

gateway = section:taboption("general", Value, "gateway", translate("IPv4 gateway"))
gateway.datatype = "ip4addr"

ip6addr = section:taboption("general", Value, "ip6addr", translate("IPv6 address"))
ip6addr.datatype = "ip6addr"

ip6prefixlen = section:taboption("general", Value, "ip6prefixlen", translate("IPv6 prefix length"))
ip6prefixlen.placeholder = "64"
ip6prefixlen.datatype = "max(128)"

ip6gw = section:taboption("general", Value, "ip6gw", translate("IPv6 gateway"))
ip6gw.datatype = "ip6addr"

section:taboption("general", Flag, "forwarding", translate("Forwarding"), translate("Enable packet forwarding through n2n community."))

mac = section:taboption("advanced", Value, "mac", translate("Override MAC address"))
mac.datatype = "macaddr"

mtu = section:taboption("advanced", Value, "mtu", translate("Override MTU"))
mtu.placeholder = "1400"
mtu.datatype = "max(9200)"
