class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.211.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.0/lightdash-cli-2.211.0-macos-arm64.tar.gz"
      sha256 "545554867c2a5426934bf7b84eefd3df91d0b074be41b81ff8c7b29cd5bf9c23"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.0/lightdash-cli-2.211.0-macos-x64.tar.gz"
      sha256 "0a7ac082ccff8d11df3755113f572dc164d15a927cbf2987f5f20dd3b525b724"
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
