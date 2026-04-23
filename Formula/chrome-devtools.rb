class ChromeDevtools < Formula
  desc "Chrome DevTools Protocol CLI — auto-connects to existing Chrome"
  homepage "https://github.com/aeroxy/chrome-devtools-cli"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeroxy/chrome-devtools-cli/releases/download/0.1.1/chrome-devtools-macos-arm64.zip"
      sha256 "7988e57c4bdb0b178a8a195d687d295a872c27343363cf66c893dd89b7125c46"
    end
  end

  def install
    bin.install "chrome-devtools"
  end

  test do
    assert_match "chrome-devtools", shell_output("#{bin}/chrome-devtools --help")
  end
end
