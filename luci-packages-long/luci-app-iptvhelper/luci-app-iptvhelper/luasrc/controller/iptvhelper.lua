-- Copyright 2019 Shun Li <riverscn@gmail.com>
-- Licensed to the public under the GNU General Public License v3.

module("luci.controller.iptvhelper", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/iptvhelper") then
		return
	end

	local page = entry({"admin", "services", "iptvhelper"}, cbi("iptvhelper"), _("IPTV Helper"),98)
	page.dependent = true

end
