class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2451.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2451.0/lightdash-cli-0.2451.0-macos-arm64.tar.gz"
      sha256 "07854b519ad8ba135b9a67a074fff7cc073e977c61913bdeff5f8a3a59ef5e09"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2451.0/lightdash-cli-0.2451.0-macos-x64.tar.gz"
      sha256 "797f1a7c232e096a7937968eb084f3f39cb3cc609fdd6dd9e065ed628f2c2500"
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
