class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2730.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2730.2/lightdash-cli-0.2730.2-macos-arm64.tar.gz"
      sha256 "d6b45029dccbb1396c85d5150dc706be60dca59df9103ebb87c7135b8642503e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2730.2/lightdash-cli-0.2730.2-macos-x64.tar.gz"
      sha256 "a6e2fd5cc1922f740d0ec86d0febeb00a4b7487c18516965664484809b2a62f0"
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
