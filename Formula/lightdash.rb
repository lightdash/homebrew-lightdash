class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2218.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2218.0/lightdash-cli-0.2218.0-macos-arm64.tar.gz"
      sha256 "9bdc4759b1716ee14298005da5d81bf46eb532ffb4584a544dfd33cae2ee348b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2218.0/lightdash-cli-0.2218.0-macos-x64.tar.gz"
      sha256 "c67bf098ca53382532b8e3fc0c60aca1defa1adef4a5a738230f9c1601211bb8"
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
