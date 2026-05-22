-- =========================================================
--  Noct — a cyber pastel colorscheme for Neovim
--  Transparent background variant
-- =========================================================

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.g.colors_name = "noct"
vim.o.termguicolors = true

local c = {
  -- base
  none        = "NONE",
  bg          = "NONE",          -- transparent
  bg_solid    = "#0A0A0A",       -- used for floats/popups
  bg_subtle   = "#141414",
  bg_highlight= "#1A1A2E",
  fg          = "#EEFFFF",
  fg_dim      = "#D9D9D9",
  fg_muted    = "#676767",
  fg_ghost    = "#4A4A6A",

  -- accents
  teal        = "#80CBC4",
  lavender    = "#CDB4FF",
  periwinkle  = "#A0C4FF",
  aqua        = "#97EEFF",
  mint        = "#B8F0B0",
  peach       = "#FFD6A5",
  pink        = "#FF8FAB",
  gold        = "#FFCB6B",
  orange      = "#F78C6C",
  red         = "#ff9cac",
  purple      = "#C792EA",

  -- diagnostics
  error       = "#FF8FAB",
  warn        = "#FFD6A5",
  info        = "#A0C4FF",
  hint        = "#80CBC4",

  -- git
  added       = "#B8F0B0",
  modified    = "#A0C4FF",
  deleted     = "#FF8FAB",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- =========================================================
--  Core
-- =========================================================
hi("Normal",          { fg = c.fg,       bg = c.bg })
hi("NormalNC",        { fg = c.fg_dim,   bg = c.bg })
hi("NormalFloat",     { fg = c.fg,       bg = c.bg_solid })
hi("FloatBorder",     { fg = c.teal,     bg = c.bg_solid })
hi("FloatTitle",      { fg = c.teal,     bg = c.bg_solid, bold = true })

-- =========================================================
--  Syntax
-- =========================================================
hi("Comment",         { fg = c.fg_ghost, italic = true })
hi("Constant",        { fg = c.peach })
hi("String",          { fg = c.mint })
hi("Character",       { fg = c.mint })
hi("Number",          { fg = c.orange })
hi("Float",           { fg = c.orange })
hi("Boolean",         { fg = c.pink })

hi("Identifier",      { fg = c.fg })
hi("Function",        { fg = c.periwinkle })

hi("Statement",       { fg = c.aqua })
hi("Keyword",         { fg = c.aqua,     italic = true })
hi("Conditional",     { fg = c.aqua,     italic = true })
hi("Repeat",          { fg = c.aqua,     italic = true })
hi("Label",           { fg = c.aqua })
hi("Operator",        { fg = c.aqua })
hi("Exception",       { fg = c.pink })

hi("PreProc",         { fg = c.lavender })
hi("Include",         { fg = c.lavender })
hi("Define",          { fg = c.lavender })
hi("Macro",           { fg = c.lavender })

hi("Type",            { fg = c.gold })
hi("StorageClass",    { fg = c.lavender })
hi("Structure",       { fg = c.gold })
hi("Typedef",         { fg = c.gold })

hi("Special",         { fg = c.teal })
hi("SpecialChar",     { fg = c.teal })
hi("Delimiter",       { fg = c.aqua })
hi("SpecialComment",  { fg = c.fg_ghost, italic = true })

hi("Underlined",      { underline = true })
hi("Ignore",          { fg = c.fg_ghost })
hi("Error",           { fg = c.error })
hi("Todo",            { fg = c.bg_solid, bg = c.teal, bold = true })

-- =========================================================
--  UI
-- =========================================================
hi("ColorColumn",     { bg = c.bg_highlight })
hi("Conceal",         { fg = c.fg_ghost })
hi("Cursor",          { fg = c.bg_solid,  bg = c.lavender })
hi("CursorIM",        { fg = c.bg_solid,  bg = c.lavender })
hi("CursorColumn",    { bg = c.bg_highlight })
hi("CursorLine",      { bg = "#FFFFFF08" })
hi("CursorLineNr",    { fg = c.fg_ghost,  bold = true })
hi("LineNr",          { fg = "#2A2A3A" })
hi("SignColumn",      { fg = c.fg_ghost,  bg = c.bg })
hi("FoldColumn",      { fg = c.fg_ghost,  bg = c.bg })
hi("Folded",          { fg = c.fg_ghost,  bg = c.bg_highlight, italic = true })

hi("MatchParen",      { fg = c.lavender,  bold = true, underline = true })

hi("Visual",          { bg = "#CDB4FF25" })
hi("VisualNOS",       { bg = "#CDB4FF15" })

hi("Search",          { fg = c.bg_solid,  bg = c.teal })
hi("IncSearch",       { fg = c.bg_solid,  bg = c.lavender })
hi("CurSearch",       { fg = c.bg_solid,  bg = c.lavender })
hi("Substitute",      { fg = c.bg_solid,  bg = c.pink })

hi("StatusLine",      { fg = c.fg_muted,  bg = c.bg_solid })
hi("StatusLineNC",    { fg = c.fg_ghost,  bg = c.bg_solid })
hi("WinSeparator",    { fg = "#2A2A3A" })
hi("VertSplit",       { fg = "#2A2A3A" })

hi("TabLine",         { fg = c.fg_muted,  bg = c.bg_solid })
hi("TabLineSel",      { fg = c.fg,        bg = c.bg,      bold = true })
hi("TabLineFill",     { bg = c.bg_solid })

hi("Pmenu",           { fg = c.fg,        bg = c.bg_solid })
hi("PmenuSel",        { fg = c.teal,      bg = "#00000050", bold = true })
hi("PmenuSbar",       { bg = c.bg_subtle })
hi("PmenuThumb",      { bg = c.teal })

hi("WildMenu",        { fg = c.bg_solid,  bg = c.teal })

hi("Directory",       { fg = c.periwinkle })
hi("Title",           { fg = c.teal,      bold = true })

hi("NonText",         { fg = "#2A2A3A" })
hi("SpecialKey",      { fg = "#2A2A3A" })
hi("Whitespace",      { fg = "#2A2A3A" })
hi("EndOfBuffer",     { fg = "#2A2A3A" })

hi("Question",        { fg = c.teal })
hi("MoreMsg",         { fg = c.teal })
hi("ModeMsg",         { fg = c.fg,        bold = true })
hi("MsgArea",         { fg = c.fg_dim })
hi("WarningMsg",      { fg = c.warn })
hi("ErrorMsg",        { fg = c.error })

hi("SpellBad",        { undercurl = true, sp = c.error })
hi("SpellCap",        { undercurl = true, sp = c.warn })
hi("SpellRare",       { undercurl = true, sp = c.info })
hi("SpellLocal",      { undercurl = true, sp = c.hint })

-- =========================================================
--  Diagnostics
-- =========================================================
hi("DiagnosticError",           { fg = c.error })
hi("DiagnosticWarn",            { fg = c.warn })
hi("DiagnosticInfo",            { fg = c.info })
hi("DiagnosticHint",            { fg = c.hint })
hi("DiagnosticUnnecessary",     { fg = c.fg_ghost, italic = true })
hi("DiagnosticUnderlineError",  { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn",   { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo",   { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint",   { undercurl = true, sp = c.hint })
hi("DiagnosticVirtualTextError",{ fg = c.error,  italic = true })
hi("DiagnosticVirtualTextWarn", { fg = c.warn,   italic = true })
hi("DiagnosticVirtualTextInfo", { fg = c.info,   italic = true })
hi("DiagnosticVirtualTextHint", { fg = c.hint,   italic = true })

-- =========================================================
--  Git / Diff
-- =========================================================
hi("DiffAdd",         { fg = c.added,    bg = "#B8F0B015" })
hi("DiffChange",      { fg = c.modified, bg = "#A0C4FF15" })
hi("DiffDelete",      { fg = c.deleted,  bg = "#FF8FAB15" })
hi("DiffText",        { fg = c.fg,       bg = "#A0C4FF30" })

hi("GitSignsAdd",     { fg = c.added })
hi("GitSignsChange",  { fg = c.modified })
hi("GitSignsDelete",  { fg = c.deleted })

-- =========================================================
--  Treesitter
-- =========================================================
hi("@comment",                  { link = "Comment" })
hi("@comment.documentation",    { fg = c.fg_ghost, italic = true })

hi("@keyword",                  { fg = c.aqua,       italic = true })
hi("@keyword.function",         { fg = c.aqua,       italic = true })
hi("@keyword.operator",         { fg = c.aqua })
hi("@keyword.return",           { fg = c.aqua,       italic = true })
hi("@keyword.import",           { fg = c.lavender })
hi("@keyword.modifier",         { fg = c.lavender })

hi("@function",                 { fg = c.periwinkle })
hi("@function.builtin",         { fg = c.periwinkle, italic = true })
hi("@function.call",            { fg = c.periwinkle })
hi("@function.method",          { fg = c.pink })
hi("@function.method.call",     { fg = c.pink })
hi("@constructor",              { fg = c.gold })

hi("@string",                   { fg = c.mint })
hi("@string.escape",            { fg = c.fg })
hi("@string.special",           { fg = c.teal })
hi("@string.regexp",            { fg = c.orange })

hi("@number",                   { fg = c.orange })
hi("@number.float",             { fg = c.orange })
hi("@boolean",                  { fg = c.pink })

hi("@type",                     { fg = c.gold })
hi("@type.builtin",             { fg = c.gold,       italic = true })
hi("@type.definition",          { fg = c.gold })

hi("@variable",                 { fg = c.fg })
hi("@variable.builtin",         { fg = c.pink,       italic = true })
hi("@variable.parameter",       { fg = c.fg,         italic = true })
hi("@variable.member",          { fg = c.pink })

hi("@constant",                 { fg = c.peach })
hi("@constant.builtin",         { fg = c.peach,      italic = true })
hi("@constant.macro",           { fg = c.lavender })

hi("@operator",                 { fg = c.aqua })
hi("@punctuation",              { fg = c.aqua })
hi("@punctuation.delimiter",    { fg = c.aqua })
hi("@punctuation.bracket",      { fg = c.aqua })
hi("@punctuation.special",      { fg = c.teal })

hi("@namespace",                { fg = c.fg })
hi("@module",                   { fg = c.fg,         italic = true })

hi("@tag",                      { fg = c.pink })
hi("@tag.delimiter",            { fg = c.aqua })
hi("@tag.attribute",            { fg = c.lavender })

hi("@attribute",                { fg = c.lavender })
hi("@property",                 { fg = c.pink })

hi("@markup.heading",           { fg = c.lavender,   bold = true })
hi("@markup.link",              { fg = c.teal,       underline = true })
hi("@markup.link.label",        { fg = c.pink })
hi("@markup.raw",               { fg = c.mint })
hi("@markup.italic",            { fg = c.pink,       italic = true })
hi("@markup.bold",              { fg = c.pink,       bold = true })
hi("@markup.list",              { fg = c.teal })
hi("@markup.quote",             { fg = c.aqua,       italic = true })