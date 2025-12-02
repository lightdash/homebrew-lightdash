class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2215.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2215.2/lightdash-cli-0.2215.2-macos-arm64.tar.gz"
      sha256 "d1a287f3e4ab550530f7d733b64a0db977b214aa8c2ba90d01901e5dae15b626"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2215.2/lightdash-cli-0.2215.2-macos-x64.tar.gz"
      sha256 "5722502bf1d25861f202dc24b2eb0a7d3e27d62dda73bcd7d8c4f5216c860472"
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
