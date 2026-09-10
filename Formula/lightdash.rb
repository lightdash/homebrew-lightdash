class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.184.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.7/lightdash-cli-2.184.7-macos-arm64.tar.gz"
      sha256 "339798c908bf3ba8aef9bffbcfbb484ba0f66688ab26e50b2da6bfc0f47b49f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.7/lightdash-cli-2.184.7-macos-x64.tar.gz"
      sha256 "76095dbf35a5e139239392638f3fed977cb990d5f67966f930398b4de50498d3"
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
