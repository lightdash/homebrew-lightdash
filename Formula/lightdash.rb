class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2620.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2620.0/lightdash-cli-0.2620.0-macos-arm64.tar.gz"
      sha256 "67d22c139965adea51fe7e0319bd43169616447c385892ea679e2b2cab44ad39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2620.0/lightdash-cli-0.2620.0-macos-x64.tar.gz"
      sha256 "a490552f6ca7c59aa600379ae507180c284529a1c99874cfb6188e0beda42b71"
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
