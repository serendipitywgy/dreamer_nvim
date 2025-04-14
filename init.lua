local plugins = require("config")

require("plugins.utils.root").setup()
require("plugins.utils.run").setup()

_G.Root = require("plugins.utils.root")
_G.Pick = require("plugins.utils.pick")
