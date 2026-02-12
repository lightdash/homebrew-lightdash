class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2458.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2458.0/lightdash-cli-0.2458.0-macos-arm64.tar.gz"
      sha256 "9ade2bb9df7c94d0dcc293506a5c843394bf23f6345931eb25593c5ade22f379"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2458.0/lightdash-cli-0.2458.0-macos-x64.tar.gz"
      sha256 "69f4ab27e9afd49a0a77cf3f327462c80b7b7ea6213d69d82aeb649fa54dfd2c"
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
