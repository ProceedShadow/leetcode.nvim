local Lines = require("leetcode-ui.lines")

---@class lc.ui.menu.Header : lc.ui.Lines
local MenuHeader = Lines:extend("LeetMenuHeader")

local ascii = {
      [[██╗     ███████╗███████╗████████╗ ██████╗ ██████╗ ██████╗ ███████╗]],
      [[██║     ██╔════╝██╔════╝╚══██╔══╝██╔════╝██╔═══██╗██╔══██╗██╔════╝]],
      [[██║     █████╗  █████╗     ██║   ██║     ██║   ██║██║  ██║█████╗  ]],
      [[██║     ██╔══╝  ██╔══╝     ██║   ██║     ██║   ██║██║  ██║██╔══╝  ]],
      [[███████╗███████╗███████╗   ██║   ╚██████╗╚██████╔╝██████╔╝███████╗]],
      [[╚══════╝╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝]],
}

function MenuHeader:init()
    MenuHeader.super.init(self, {}, {
        hl = "Keyword",
    })

    for _, line in ipairs(ascii) do
        self:append(line):endl()
    end
end

---@type fun(): lc.ui.menu.Header
local LeetMenuHeader = MenuHeader

return LeetMenuHeader()
