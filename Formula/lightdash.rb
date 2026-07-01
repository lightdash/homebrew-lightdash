class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3271.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3271.1/lightdash-cli-0.3271.1-macos-arm64.tar.gz"
      sha256 "ba1a1beb5a8a2cf431740aac4bd78aee071ee2be67f32ea8655b7a333c916687"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3271.1/lightdash-cli-0.3271.1-macos-x64.tar.gz"
      sha256 "ec8e35cb8f73813ca0ee1daddb4a188a8d40b52196fe44f467f57048a4710fa3"
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
