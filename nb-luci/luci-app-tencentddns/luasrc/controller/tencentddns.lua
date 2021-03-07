module("luci.controller.tencentddns",package.seeall)
function index()
    local page = entry({"admin", "ddns"}, firstchild(), "动态域名解析")
    page.order = 30
    page.dependent = false
    page.acl_depends = { "luci-app-tencentddns" }
    entry({"admin", "ddns", "tencentddns"},cbi("tencentddns"),_("TencentDDNS"),2)
end
