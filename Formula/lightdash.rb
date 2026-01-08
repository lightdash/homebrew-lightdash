class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2311.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2311.0/lightdash-cli-0.2311.0-macos-arm64.tar.gz"
      sha256 "81475e4981b74e4d501c335bd1fa46d00f55d5da4c6ca7c6e2d5d42d0201d556"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2311.0/lightdash-cli-0.2311.0-macos-x64.tar.gz"
      sha256 "b2f731f42d51d163d0fadbd65e928da3b5d091438436885ce9600583bbadfdc8"
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
