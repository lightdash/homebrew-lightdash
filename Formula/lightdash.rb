class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.190.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.190.2/lightdash-cli-2.190.2-macos-arm64.tar.gz"
      sha256 "936c87740f833a534066d4584d95d352a0804b57a1563eaccdc587751db95b78"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.190.2/lightdash-cli-2.190.2-macos-x64.tar.gz"
      sha256 "57e00d73497b7f91cbbf1c1bd116f54a1ea2ffbb2bc6a4f5e30392f0799b1fb7"
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
