class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.201.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.201.0/lightdash-cli-1.201.0-macos-arm64.tar.gz"
      sha256 "e8f0b5fc1d0c337cf2a863c6fcff0c4b3ad5862ee834bee8b3c8663e3941a417"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.201.0/lightdash-cli-1.201.0-macos-x64.tar.gz"
      sha256 "568ae8f5f3804575d7f4b303c3dbb3e2f7cda15a226fb9efb7d2a15a1de57c26"
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
