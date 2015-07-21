require "sinatra"

get "/" do
  current_ip = Socket.ip_address_list.
    detect { |intf| intf.ipv4_private? }.
    ip_address

  "ip-address: #{current_ip}"
end
