class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2303.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2303.1/lightdash-cli-0.2303.1-macos-arm64.tar.gz"
      sha256 "982d3ee880f20c26c264122eb530deaacbbd43a75cef9ea7fd0a249c7f5183d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2303.1/lightdash-cli-0.2303.1-macos-x64.tar.gz"
      sha256 "206f3afdf487e453995acec156bcaae2131efc89a0bf71d22f0d66608ffd5140"
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
