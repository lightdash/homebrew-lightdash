class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.149.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.1/lightdash-cli-2.149.1-macos-arm64.tar.gz"
      sha256 "e0588b97fbce78003882e854095f6a85b3cf75c100995be8b41fd9244680d2b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.1/lightdash-cli-2.149.1-macos-x64.tar.gz"
      sha256 "66e697c729dd0aa0070600cbfa6be568e3d6f3bb44b5066a1c98755ebc551b95"
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
