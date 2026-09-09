class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.172.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.172.0/lightdash-cli-2.172.0-macos-arm64.tar.gz"
      sha256 "befb6e64e8dd130d7e2a3d8ef963db660457957b8532b26800beaa211f62b150"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.172.0/lightdash-cli-2.172.0-macos-x64.tar.gz"
      sha256 "b19be30a935d60e7ca68ac820cb0f93c99a774aa266c73008d24c87405618644"
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
