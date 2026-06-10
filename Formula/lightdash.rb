class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3132.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3132.1/lightdash-cli-0.3132.1-macos-arm64.tar.gz"
      sha256 "7b62cf2926bdc15b55e9a65ed7925e1174559d9007283942f52c34fd9ca53531"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3132.1/lightdash-cli-0.3132.1-macos-x64.tar.gz"
      sha256 "d68dc748a4bc90df56a8e8e9f9fa24fc24517db386177626a3368ba585e4f902"
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
