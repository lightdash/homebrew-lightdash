class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2213.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2213.0/lightdash-cli-0.2213.0-macos-arm64.tar.gz"
      sha256 "87effc30e427746bf91f9afd245f1c3088366f4d812002657e3448ee8f4fc6d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2213.0/lightdash-cli-0.2213.0-macos-x64.tar.gz"
      sha256 "4500d99a7533016fb14c86310ec1afeada464e4f33c06979c8564319d2fdc0d9"
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
