class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2742.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2742.2/lightdash-cli-0.2742.2-macos-arm64.tar.gz"
      sha256 "a24109e84739b89f44a9d19f6a070d3829cf02049d7f1cadf1d4458011a6d9d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2742.2/lightdash-cli-0.2742.2-macos-x64.tar.gz"
      sha256 "47df52790c0631d1bb290a17f435c12c14354818e5ae865dcc562e62823b8fd0"
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
