class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2198.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.2/lightdash-cli-0.2198.2-macos-arm64.tar.gz"
      sha256 "02196286688be06f6db037c3f2a0a19c386ac5160115d89a4107d1aff8b0f619"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.2/lightdash-cli-0.2198.2-macos-x64.tar.gz"
      sha256 "f8a47bd37790bc431b4116b317ab3ea20c2e8cdff12805923a41446ffb590252"
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
