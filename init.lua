local plugins = require("config")

require("plugins.utils.root").setup()

_G.Root = require("plugins.utils.root")
_G.Pick = require("plugins.utils.pick")
