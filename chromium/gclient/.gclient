solutions = [
  { "name"        : "src",
    "url"         : "http://chromium.googlesource.com/chromium/src.git",
    "deps_file"   : ".DEPS.git",
    "managed"     : True,
    "custom_deps" : {
      "src/chrome/tools/test/reference_build/chrome_linux": None,
      "src/chrome_frame/tools/test/reference_build/chrome_win": None,
      "src/chrome/tools/test/reference_build/chrome_mac": None,
      "src/chrome/tools/test/reference_build/chrome_win": None,
      "src/third_party/hunspell_dictionaries": None, 
      "src/third_party/WebKit": "http://chromium.googlesource.com/chromium/blink.git",
      "src/third_party/trace-viewer": "http://chromium.googlesource.com/external/trace-viewer.git",
      "src/third_party/syzygy/binaries": "http://chromium.googlesource.com/external/sawbuck/syzygy/binaries.git",
    },
    "safesync_url": "",
  },
]
cache_dir = None
