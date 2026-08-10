class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.115.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.115.0/lightdash-cli-1.115.0-macos-arm64.tar.gz"
      sha256 "abdc17c7da6ed153fca5ccd0026a3e142f03ef68070053e6739143d39840394b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.115.0/lightdash-cli-1.115.0-macos-x64.tar.gz"
      sha256 "937cf2b05ceb8e9f7bd93c483906d0cc3a6e4724c13f2d3242d77fc759c0e5f0"
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
