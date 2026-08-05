class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.84.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.84.1/lightdash-cli-1.84.1-macos-arm64.tar.gz"
      sha256 "0b5b4af141c0a49190de936373899d45be96e1c5af4a1fcd8a90ddf4b4de870e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.84.1/lightdash-cli-1.84.1-macos-x64.tar.gz"
      sha256 "d09c7eabe357e1fe4a7c9744b4dddf324bd5aebe9f4d23bba1f0480d7e2c8be0"
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
