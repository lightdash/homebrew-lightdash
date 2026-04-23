class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2790.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2790.0/lightdash-cli-0.2790.0-macos-arm64.tar.gz"
      sha256 "5206e7afea202743d3d42c82b29b9960f2a90e08963c0ff58cac676a5af5f1e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2790.0/lightdash-cli-0.2790.0-macos-x64.tar.gz"
      sha256 "ebf1e0fef1a7395cd5a9230ac8bc2a7211dccce1cd86dde2ecbdcd2a7cc4fa2a"
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
