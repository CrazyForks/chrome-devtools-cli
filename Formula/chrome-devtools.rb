class ChromeDevtools < Formula
  desc "Chrome DevTools Protocol CLI — auto-connects to existing Chrome"
  homepage "https://github.com/aeroxy/chrome-devtools-cli"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeroxy/chrome-devtools-cli/releases/download/0.2.2/chrome-devtools-macos-arm64.zip"
      sha256 "ec85eaaeac395f33e952c5478998d2e7df26365a21237fc8be145921ee02e247"
    end
  end

  def install
    bin.install "chrome-devtools"
  end

  test do
    assert_match "chrome-devtools #{version}", shell_output("#{bin}/chrome-devtools --version")
  end
end
