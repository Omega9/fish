complete -c gallery-dl -x
complete -c gallery-dl -s 'h' -l 'help' -d 'Print this help message and exit'
complete -c gallery-dl -l 'version' -d 'Print program version and exit'
complete -c gallery-dl -x -s 'f' -l 'filename' -d 'Filename format string for downloaded files ("/O" for "original" filenames)'
complete -c gallery-dl -x -a '(__fish_complete_directories)' -s 'd' -l 'destination' -d 'Target location for file downloads'
complete -c gallery-dl -x -a '(__fish_complete_directories)' -s 'D' -l 'directory' -d 'Exact location for file downloads'
complete -c gallery-dl -x -a '(__fish_complete_directories)' -s 'X' -l 'extractors' -d 'Load external extractors from PATH'
complete -c gallery-dl -x -l 'proxy' -d 'Use the specified proxy'
complete -c gallery-dl -x -l 'source-address' -d 'Client-side IP address to bind to'
complete -c gallery-dl -x -l 'user-agent' -d 'User-Agent request header'
complete -c gallery-dl -x -l 'clear-cache' -d 'Delete cached login sessions, cookies, etc. for MODULE (ALL to delete everything)'
complete -c gallery-dl -r -F -s 'i' -l 'input-file' -d 'Download URLs found in FILE ("-" for stdin). More than one --input-file can be specified'
complete -c gallery-dl -r -F -s 'I' -l 'input-file-comment' -d 'Download URLs found in FILE. Comment them out after they were downloaded successfully.'
complete -c gallery-dl -r -F -s 'x' -l 'input-file-delete' -d 'Download URLs found in FILE. Delete them after they were downloaded successfully.'
complete -c gallery-dl -s 'q' -l 'quiet' -d 'Activate quiet mode'
complete -c gallery-dl -s 'v' -l 'verbose' -d 'Print various debugging information'
complete -c gallery-dl -s 'g' -l 'get-urls' -d 'Print URLs instead of downloading'
complete -c gallery-dl -s 'G' -l 'resolve-urls' -d 'Print URLs instead of downloading; resolve intermediary URLs'
complete -c gallery-dl -s 'j' -l 'dump-json' -d 'Print JSON information'
complete -c gallery-dl -s 's' -l 'simulate' -d 'Simulate data extraction; do not download anything'
complete -c gallery-dl -s 'E' -l 'extractor-info' -d 'Print extractor defaults and settings'
complete -c gallery-dl -s 'K' -l 'list-keywords' -d 'Print a list of available keywords and example values for the given URLs'
complete -c gallery-dl -l 'list-modules' -d 'Print a list of available extractor modules'
complete -c gallery-dl -l 'list-extractors' -d 'Print a list of extractor classes with description, (sub)category and example URL'
complete -c gallery-dl -r -F -l 'write-log' -d 'Write logging output to FILE'
complete -c gallery-dl -r -F -l 'write-unsupported' -d 'Write URLs, which get emitted by other extractors but cannot be handled, to FILE'
complete -c gallery-dl -l 'write-pages' -d 'Write downloaded intermediary pages to files in the current directory to debug problems'
complete -c gallery-dl -x -s 'r' -l 'limit-rate' -d 'Maximum download rate (e.g. 500k or 2.5M)'
complete -c gallery-dl -x -s 'R' -l 'retries' -d 'Maximum number of retries for failed HTTP requests or -1 for infinite retries (default: 4)'
complete -c gallery-dl -x -l 'http-timeout' -d 'Timeout for HTTP connections (default: 30.0)'
complete -c gallery-dl -x -l 'sleep' -d 'Number of seconds to wait before each download. This can be either a constant value or a range (e.g. 2.7 or 2.0-3.5)'
complete -c gallery-dl -x -l 'sleep-request' -d 'Number of seconds to wait between HTTP requests during data extraction'
complete -c gallery-dl -x -l 'sleep-extractor' -d 'Number of seconds to wait before starting data extraction for an input URL'
complete -c gallery-dl -x -l 'filesize-min' -d 'Do not download files smaller than SIZE (e.g. 500k or 2.5M)'
complete -c gallery-dl -x -l 'filesize-max' -d 'Do not download files larger than SIZE (e.g. 500k or 2.5M)'
complete -c gallery-dl -x -l 'chunk-size' -d 'Size of in-memory data chunks (default: 32k)'
complete -c gallery-dl -l 'no-part' -d 'Do not use .part files'
complete -c gallery-dl -l 'no-skip' -d 'Do not skip downloads; overwrite existing files'
complete -c gallery-dl -l 'no-mtime' -d 'Do not set file modification times according to Last-Modified HTTP response headers'
complete -c gallery-dl -l 'no-download' -d 'Do not download any files'
complete -c gallery-dl -l 'no-postprocessors' -d 'Do not run any post processors'
complete -c gallery-dl -l 'no-check-certificate' -d 'Disable HTTPS certificate validation'
complete -c gallery-dl -x -s 'o' -l 'option' -d 'Additional options. Example: -o browser=firefox'
complete -c gallery-dl -r -F -s 'c' -l 'config' -d 'Additional configuration files'
complete -c gallery-dl -r -F -l 'config-yaml' -d 'Additional configuration files in YAML format'
complete -c gallery-dl -r -F -l 'config-toml' -d 'Additional configuration files in TOML format'
complete -c gallery-dl -l 'config-create' -d 'Create a basic configuration file'
complete -c gallery-dl -l 'config-ignore' -d 'Do not read default configuration files'
complete -c gallery-dl -l 'ignore-config' -d '==SUPPRESS=='
complete -c gallery-dl -x -s 'u' -l 'username' -d 'Username to login with'
complete -c gallery-dl -x -s 'p' -l 'password' -d 'Password belonging to the given username'
complete -c gallery-dl -l 'netrc' -d 'Enable .netrc authentication data'
complete -c gallery-dl -r -F -s 'C' -l 'cookies' -d 'File to load additional cookies from'
complete -c gallery-dl -r -F -l 'cookies-export' -d 'Export session cookies to FILE'
complete -c gallery-dl -x -l 'cookies-from-browser' -d 'Name of the browser to load cookies from, with optional domain prefixed with "/", keyring name prefixed with "+", profile prefixed with ":", and container prefixed with "::" ("none" for no container)'
complete -c gallery-dl -r -F -l 'download-archive' -d 'Record all downloaded or skipped files in FILE and skip downloading any file already in it'
complete -c gallery-dl -x -s 'A' -l 'abort' -d 'Stop current extractor run after N consecutive file downloads were skipped'
complete -c gallery-dl -x -s 'T' -l 'terminate' -d 'Stop current and parent extractor runs after N consecutive file downloads were skipped'
complete -c gallery-dl -x -l 'range' -d 'Index range(s) specifying which files to download. These can be either a constant value, range, or slice (e.g. "5", "8-20", or "1:24:3")'
complete -c gallery-dl -x -l 'chapter-range' -d 'Like "--range", but applies to manga chapters and other delegated URLs'
complete -c gallery-dl -x -l 'filter' -d 'Python expression controlling which files to download. Files for which the expression evaluates to False are ignored. Available keys are the filename-specific ones listed by "-K". Example: --filter "image_width >= 1000 and rating in ("s", "q")"'
complete -c gallery-dl -x -l 'chapter-filter' -d 'Like "--filter", but applies to manga chapters and other delegated URLs'
complete -c gallery-dl -x -s 'P' -l 'postprocessor' -d 'Activate the specified post processor'
complete -c gallery-dl -x -s 'O' -l 'postprocessor-option' -d 'Additional post processor options'
complete -c gallery-dl -l 'write-metadata' -d 'Write metadata to separate JSON files'
complete -c gallery-dl -l 'write-info-json' -d 'Write gallery metadata to a info.json file'
complete -c gallery-dl -l 'write-infojson' -d '==SUPPRESS=='
complete -c gallery-dl -l 'write-tags' -d 'Write image tags to separate text files'
complete -c gallery-dl -l 'zip' -d 'Store downloaded files in a ZIP archive'
complete -c gallery-dl -l 'cbz' -d 'Store downloaded files in a CBZ archive'
complete -c gallery-dl -x -l 'mtime' -d 'Set file modification times according to metadata selected by NAME. Examples: "date" or "status[date]"'
complete -c gallery-dl -l 'mtime-from-date' -d '==SUPPRESS=='
complete -c gallery-dl -x -l 'ugoira' -d 'Convert Pixiv Ugoira to FORMAT using FFmpeg. Supported formats are "webm", "mp4", "gif", "vp8", "vp9", "vp9-lossless", "copy".'
complete -c gallery-dl -l 'ugoira-conv' -d '==SUPPRESS=='
complete -c gallery-dl -l 'ugoira-conv-lossless' -d '==SUPPRESS=='
complete -c gallery-dl -l 'ugoira-conv-copy' -d '==SUPPRESS=='
complete -c gallery-dl -x -l 'exec' -d 'Execute CMD for each downloaded file. Supported replacement fields are {} or {_path}, {_directory}, {_filename}. Example: --exec "convert {} {}.png && rm {}"'
complete -c gallery-dl -x -l 'exec-after' -d 'Execute CMD after all files were downloaded. Example: --exec-after "cd {_directory} && convert * ../doc.pdf"'