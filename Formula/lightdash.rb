class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2652.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2652.0/lightdash-cli-0.2652.0-macos-arm64.tar.gz"
      sha256 "abc382d2f3043cb47730304baa22ca0f3208ea548ba3e28752409f94955bb4f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2652.0/lightdash-cli-0.2652.0-macos-x64.tar.gz"
      sha256 "39d9ed2cd166781a9b5a0103e6d3d13556c6216a4454e921785ddcb830065253"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
