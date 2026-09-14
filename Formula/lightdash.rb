class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.204.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.204.0/lightdash-cli-2.204.0-macos-arm64.tar.gz"
      sha256 "d8b6ffe9daf437cb80d1d2284c2a95e5272376a8a9ec74e0d6285234f71ebb3d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.204.0/lightdash-cli-2.204.0-macos-x64.tar.gz"
      sha256 "2f9f8c1872580398cd91ba4d3390900460d175e4f01d98064339e0bc7a6bdd01"
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
