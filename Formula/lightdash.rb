class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3156.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3156.0/lightdash-cli-0.3156.0-macos-arm64.tar.gz"
      sha256 "9070a584798f68915e0f86121bc570664c948102a6e8d6e9a9a7b9d014bfe567"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3156.0/lightdash-cli-0.3156.0-macos-x64.tar.gz"
      sha256 "f97b2b190838104cf5f0a99d99f7ce1cfe1481bae8bae9fa6f8ed024b065031a"
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
