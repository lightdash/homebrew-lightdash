class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2351.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2351.0/lightdash-cli-0.2351.0-macos-arm64.tar.gz"
      sha256 "b141d013098aa933525c61085e6a9b5f2bde6d7a32e404143082776c3b3469fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2351.0/lightdash-cli-0.2351.0-macos-x64.tar.gz"
      sha256 "82d3ceb307722b8623602fe04f11877115e402423c72b8a6cbe953abfe684508"
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
