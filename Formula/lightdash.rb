class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2642.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2642.1/lightdash-cli-0.2642.1-macos-arm64.tar.gz"
      sha256 "35d5cd8ddbe0746d07d55da078fab4146531e365cbfdea3479a676515b9e4e46"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2642.1/lightdash-cli-0.2642.1-macos-x64.tar.gz"
      sha256 "e47d15be0e2e8ca8928ff8e67cf222ebda01d12944f1f9f07f55593c9c59a7e8"
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
