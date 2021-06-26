local function setup(args)

  local xplr = xplr

  if args == nil then
    args = {}
  end

  if args.bookmark_key == nil then
    args.mode = "m"
  end

  if args.search_key == nil then
    args.key = "'"
  end


  xplr.config.modes.builtin["default"].key_bindings.on_key[args.bookmark_key] = {
    help = "bookmark",
    messages = {
      {
        BashExecSilently = [===[
		  PTH="${XPLR_FOCUS_PATH:?}"
		  if echo "${PTH:?}" >> ~/.config/xplr/bookmarks; then
			echo "LogSuccess: ${PTH:?} added to bookmarks" >> "${XPLR_PIPE_MSG_IN:?}"
		  else
			echo "LogError: Failed to bookmark ${PTH:?}" >> "${XPLR_PIPE_MSG_IN:?}"
		  fi
        ]===]
      },
    },
  }

  xplr.config.modes.builtin.default.key_bindings.on_key[args.search_key] = {
    help = "go to bookmark",
    messages = {
      {
        BashExec = [===[
			PTH=$(cat ~/.config/xplr/bookmarks | fzf --no-sort)
			if [ "$PTH" ]; then
				echo FocusPath: "'"${PTH:?}"'" >> "${XPLR_PIPE_MSG_IN:?}"
			fi
        ]===]
      },
    },
  }

end

return { setup = setup }
