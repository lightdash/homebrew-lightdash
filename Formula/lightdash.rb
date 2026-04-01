class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2707.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2707.0/lightdash-cli-0.2707.0-macos-arm64.tar.gz"
      sha256 "be0ad85da49ec3836e442d3290eaadfe5d718b3cc1ad924823d85b3cb0630f0a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2707.0/lightdash-cli-0.2707.0-macos-x64.tar.gz"
      sha256 "286e4c9e419c249a68369d58dfc77da987d276a1ae6d1e83d28904fbd7990619"
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
