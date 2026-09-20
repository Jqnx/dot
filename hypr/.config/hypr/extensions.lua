-- FLoat browser's extension windows
-- https://wiki.hypr.land/configuring/code-snippets/#float-browsers-extension-windows
hl.on("window.open", function(w)
	if w.class ~= "helium" then
		return
	end

	local ff_windows = hl.get_windows({ class = "helium" })
	if #ff_windows <= 1 then
		return
	end

	hl.dispatch(hl.dsp.window.float({ action = "set", window = w }))

	local sub
	sub = hl.on("window.title", function(tw)
		if tw.address ~= w.address then
			return
		end
		if tw.title == "" or tw.title == "about:blank" then
			return
		end

		sub:remove()

		if tw.title:match("^Extension:") then
			hl.dispatch(hl.dsp.window.resize({ x = 800, y = 600, window = tw }))
			hl.dispatch(hl.dsp.window.center({ window = tw }))
			hl.dispatch(hl.dsp.focus({ window = tw }))
		else
			hl.dispatch(hl.dsp.window.float({ action = "unset", window = tw }))
		end
	end)
end)
