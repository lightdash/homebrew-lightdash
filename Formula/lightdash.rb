class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2997.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2997.1/lightdash-cli-0.2997.1-macos-arm64.tar.gz"
      sha256 "5c251aafd46d0d70d2304073a4b3d06a999fb6e0535424e238a19f14b491cfd3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2997.1/lightdash-cli-0.2997.1-macos-x64.tar.gz"
      sha256 "881f9aa021047870f9bb9cd5ece934aa40348d867c87a50e8ae2d14f300ba4a4"
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
