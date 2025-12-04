class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2222.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2222.0/lightdash-cli-0.2222.0-macos-arm64.tar.gz"
      sha256 "aee8292ce53d4c50423ad881c436bbf2da34e87a290e1bd039400b1e36a61492"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2222.0/lightdash-cli-0.2222.0-macos-x64.tar.gz"
      sha256 "e49db5f1ef3331c3f9ed12383c9c17043d985fba36d36897ad1ff22bfc4aef5c"
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
