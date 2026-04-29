class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2842.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2842.0/lightdash-cli-0.2842.0-macos-arm64.tar.gz"
      sha256 "b54100bdaaa71a1f45f0a44104672e9472ac582d9e0de202e705afbf239ae4a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2842.0/lightdash-cli-0.2842.0-macos-x64.tar.gz"
      sha256 "4d187132bd3f6029f720da182257ada96fd7f6bbe2ebaf7d3d8caa4c9adb487a"
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
