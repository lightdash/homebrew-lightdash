class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2282.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.5/lightdash-cli-0.2282.5-macos-arm64.tar.gz"
      sha256 "eebc27d85f9086bd9b852834bb9d6ef1ea082881739b3b289e7444d50e5b0906"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.5/lightdash-cli-0.2282.5-macos-x64.tar.gz"
      sha256 "08be9c2f97fb6ada09c045865857629f3e3fa9cad86cb2eff6a90253cbe70990"
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
