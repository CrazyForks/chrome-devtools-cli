class ChromeDevtools < Formula
  desc "Chrome DevTools Protocol CLI — auto-connects to existing Chrome"
  homepage "https://github.com/aeroxy/chrome-devtools-cli"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeroxy/chrome-devtools-cli/releases/download/1.4.0/chrome-devtools-macos-arm64.zip"
      sha256 "28a2f4554af755dec2a818bfa0b9e0034849ff74f20df47b6dd67c6999624e0a"
    end
  end

  def install
    bin.install "chrome-devtools"
  end

  test do
    assert_match "chrome-devtools #{version}", shell_output("#{bin}/chrome-devtools --version")
  end
end
