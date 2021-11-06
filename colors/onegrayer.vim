" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['onegrayer'] = nil
package.loaded['onegrayer.highlights'] = nil
package.loaded['onegrayer.Treesitter'] = nil
package.loaded['onegrayer.markdown'] = nil
package.loaded['onegrayer.Whichkey'] = nil
package.loaded['onegrayer.Git'] = nil
package.loaded['onegrayer.LSP'] = nil

require("onegrayer")
EOF

