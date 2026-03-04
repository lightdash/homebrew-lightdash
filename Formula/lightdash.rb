class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2564.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2564.0/lightdash-cli-0.2564.0-macos-arm64.tar.gz"
      sha256 "b2d3a6dd9f85a5ee678d54d7bb38445af9cb5d6c6d0645466d9e079940145bd1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2564.0/lightdash-cli-0.2564.0-macos-x64.tar.gz"
      sha256 "39bcda00999a8563b5e6dc362105293897a33b11c4ab6e9f9930cc0736bd5e0f"
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
