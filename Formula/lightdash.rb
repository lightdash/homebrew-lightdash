class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3453.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3453.0/lightdash-cli-0.3453.0-macos-arm64.tar.gz"
      sha256 "d4e10b9fa19cf6be0db905742ffef10f6abc343d052f5fded0ae904eb2fdac53"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3453.0/lightdash-cli-0.3453.0-macos-x64.tar.gz"
      sha256 "08af6f100d8568d1b7c961e7b73c918d5ef9997691c1f70ce86ea5d005db8ff9"
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
