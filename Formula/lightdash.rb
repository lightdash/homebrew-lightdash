class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.101.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.101.0/lightdash-cli-2.101.0-macos-arm64.tar.gz"
      sha256 "b52bcdc866e30d41aed8b9da550e98a3766faf382a8b1566c69f197cc5dfc1b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.101.0/lightdash-cli-2.101.0-macos-x64.tar.gz"
      sha256 "1d405af6b0aa1766c521f912ef834c48d7143b3546948c3499254de16d5bb3d3"
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
