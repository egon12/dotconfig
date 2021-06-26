version="0.14.3"

package.path = os.getenv("HOME") .. '/.config/xplr/plugins/?/src/init.lua'

require("fzf").setup{
  mode = "default",
  key = "F",
  args = "--preview 'pistol {}'"
}

require("bookmark").setup{
  bookmark_key = "m",
  search_key = "'"
}

