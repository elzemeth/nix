{
  completeopt = [
    "menu"
    "menuone"
    "noselect"
  ];
  updatetime = 100; # Faster completion

  # Line numbers
  relativenumber = true; # Relative line numbers
  number = true; # Display the absolute line number of the current line
  hidden = true; # Keep closed buffer open in the background
  mouse = "a"; # Enable mouse control
  mousemodel = "extend"; # Mouse right-click extends the current selection
  splitbelow = true; # A new window is put below the current one
  splitright = true; # A new window is put right of the current one

  swapfile = false; # Disable the swap file
  modeline = true; # Tags such as 'vim:ft=sh'
  modelines = 100; # Sets the type of modelines
  undofile = true; # Automatically save and restore undo history
  incsearch = true; # Incremental search: show match for partly typed search command
  ignorecase = true; # When the search query is lower-case, match both lower and upper-case
  #   patterns
  smartcase = true; # Override the 'ignorecase' option if the search pattern contains upper
  #   case characters
  cursorline = true; # Highlight the screen line of the cursor
  cursorcolumn = false; # Highlight the screen column of the cursor
  signcolumn = "yes"; # Whether to show the signcolumn
  colorcolumn = "100"; # Columns to highlight
  laststatus = 3; # When to use a status line for the last window
  fileencoding = "utf-8"; # File-content encoding for the current buffer
  termguicolors = true; # Enables 24-bit RGB color in the |TUI|
  wrap = false; # Prevent text from wrapping

  # Tab options
  tabstop = 2; # Number of spaces a <Tab> in the text stands for (local to buffer)
  shiftwidth = 2; # Number of spaces used for each step of (auto)indent (local to buffer)
  softtabstop = 0; # If non-zero, number of spaces to insert for a <Tab> (local to buffer)
  expandtab = true; # Expand <Tab> to spaces in Insert mode (local to buffer)
  autoindent = true; # Do clever autoindenting
}
