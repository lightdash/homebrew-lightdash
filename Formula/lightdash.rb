class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2984.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.4/lightdash-cli-0.2984.4-macos-arm64.tar.gz"
      sha256 "272e1e2b0bace03738c5abd63799e1f406578274fc7ea447f83c03f570fafa41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.4/lightdash-cli-0.2984.4-macos-x64.tar.gz"
      sha256 "c68788832119ecc186bb03f1ed0981d5258d14ef20836cb91c2ccafedca8e411"
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
