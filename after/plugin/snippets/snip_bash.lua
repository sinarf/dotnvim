local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
    return
end

local s = luasnip.snippet
local tnode = luasnip.text_node


luasnip.add_snippets("sh", {
    s(
        "origin", {
            tnode(
                'origin=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)'
            )
        }
    ),
    s(
        "log", {
            tnode(
                {
                    'this_script=$(basename "${bash_source[0]}")',
                    '# format log message with the name of the current script',
                    'log() {',
                    '  local message="${1}"',
                    '  echo -e "[${this_script}] ${message}"',
                    '}',
                }
            )
        }
    ),
    s(
        "getopts", {
            tnode(
                {
                    'usage() {',
                    '	echo "Usage:    $0',
                    '',
                    '   Options:',
                    '   -h          Display this message.',
                    '"',
                    '}',
                    '',
                    'while getopts "h" opt; do',
                    '  case "${opt}" in',
                    '  h)',
                    '    usage',
                    '    exit 0',
                    '  ;;',
                    '  *)',
                    '    usage',
                    '    exit 1',
                    '  ;;',
                    'esac',
                    'done',
                }
            )
        }
    ),
})
