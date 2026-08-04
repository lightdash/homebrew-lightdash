class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.73.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.73.0/lightdash-cli-1.73.0-macos-arm64.tar.gz"
      sha256 "db2b42f2a1867dca7256dc1b8d1a080ade68fe4a68d509429d52603fc1d628b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.73.0/lightdash-cli-1.73.0-macos-x64.tar.gz"
      sha256 "023f753d4639fe5be81baab3b526c50fda3f07acc185ee0c41f399d400d3ba4d"
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
