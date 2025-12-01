class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2214.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.1/lightdash-cli-0.2214.1-macos-arm64.tar.gz"
      sha256 "226fd3c9d1ed9e14f679335da353bf08a70c32e614d8e564c48cb25e2bee374b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.1/lightdash-cli-0.2214.1-macos-x64.tar.gz"
      sha256 "11f05f0a028a4f292f13993462bdeb164f40747eaae4232fc26321a4a0262315"
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
