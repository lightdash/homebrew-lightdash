class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2282.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.4/lightdash-cli-0.2282.4-macos-arm64.tar.gz"
      sha256 "9ae52dfb78515bf55aa8f21aaee8d210b99d21d983e67a7a0016ecaa3d3fea85"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.4/lightdash-cli-0.2282.4-macos-x64.tar.gz"
      sha256 "7b6de816af7fecd9a3f73bc596ef9086d90af968dbeb10ecf0be7cdc29751395"
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
