class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2269.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.2/lightdash-cli-0.2269.2-macos-arm64.tar.gz"
      sha256 "9c3701a9a42c96ab570185876ac25c4464c07c3e02e89d8eecc8a228f2daae65"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.2/lightdash-cli-0.2269.2-macos-x64.tar.gz"
      sha256 "10eaa8f60f8a7d87b5a33bc12297072010b7b5da03872c82609303a535c9531d"
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
