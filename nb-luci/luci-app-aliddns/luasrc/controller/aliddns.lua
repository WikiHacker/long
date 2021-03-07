module("luci.controller.aliddns",package.seeall)
function index()
entry({"admin","ddns","aliddns"},cbi("aliddns"),_("AliDDNS"),58)
end
