class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2739.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2739.1/lightdash-cli-0.2739.1-macos-arm64.tar.gz"
      sha256 "2a898388958df5a8236f8bca4707d007c6cb255c321c985e78476883efdf1825"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2739.1/lightdash-cli-0.2739.1-macos-x64.tar.gz"
      sha256 "f532e67d1fc06aba79eb9a8a810a8366e35554748f67fcfc1899939070283421"
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
