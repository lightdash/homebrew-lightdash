class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2316.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2316.0/lightdash-cli-0.2316.0-macos-arm64.tar.gz"
      sha256 "e7927ddbab74e02b1e851172c3e52158b1840af0abb1423f2aabe110add37873"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2316.0/lightdash-cli-0.2316.0-macos-x64.tar.gz"
      sha256 "0528abeb0643bb5143f24403467db377dcb08b555efcda155feb489e30b0f789"
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
