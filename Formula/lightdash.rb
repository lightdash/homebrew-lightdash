class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3354.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3354.1/lightdash-cli-0.3354.1-macos-arm64.tar.gz"
      sha256 "26bb602547d25974b1ab1b9a7b27ef6f44d04a111bfb467324ec07f76dbd66f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3354.1/lightdash-cli-0.3354.1-macos-x64.tar.gz"
      sha256 "aa6dd38c409058648662d9b1098f99f35b90c7d8c76efeb7e428294833a89074"
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
