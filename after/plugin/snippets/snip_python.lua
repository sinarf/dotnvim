local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
    return
end

local s = luasnip.snippet
local t = luasnip.text_node


luasnip.add_snippets("python", {
    s(
        "script", {
            t({
                '#!/usr/bin/env python3',
                '',
                'import argparse',
                'import logging as log',
                'import sys.exit as sys_exit',
                '',
                '"""',
                'TODO: Replace this with the script description, it will be used in usage help',
                '"""',
                '',
                '',
                'def main() -> None:',
                '    parser = argparse.ArgumentParser(description=__file__.__doc__)',
                '',
                '    parser.add_argument(',
                '        "-q",',
                '        "--quiet",',
                '        action="store_true",',
                '        help="Quiet mode, shows only warnings and errors.",',
                '        default=False,',
                '    )',
                '    parser.add_argument(',
                '        "-v",',
                '        "--verbose",',
                '        action="store_true",',
                '        help="Enable log debug, (override --quiet)",',
                '        default=False,',
                '    )',
                '',
                '    parser.set_defaults(generate_ref=False)',
                '    args = parser.parse_args()',
                '',
                '    loglevel = log.INFO',
                '    if args.quiet:',
                '        loglevel = log.WARNING',
                '    if args.verbose:',
                '        loglevel = log.DEBUG',
                '    log.basicConfig(format="[%(filename)s] %(levelname)s - %(message)s", level=loglevel)',
                '',
                '    if args.verbose and args.quiet:',
                '        log.warning("Verbose takes over quiet mode when both enabled")',
                '    log.debug("DEBUG mode enabled")',
                '    log.info("Start of script")',
                '',
                '    # TODO: Call your code from here',
                '',
                '    log.info("End of script")',
                '',
                '',
                'if __name__ == "__main__":',
                '    sys_exit(main())  # type:ignore',
            }
            )
        }
    ),
})
