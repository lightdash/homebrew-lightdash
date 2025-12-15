class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2253.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2253.0/lightdash-cli-0.2253.0-macos-arm64.tar.gz"
      sha256 "c37fdcf3fff5f26492a3a86a7c69779f3c0a783ebf400ab5f6c5a9535da539d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2253.0/lightdash-cli-0.2253.0-macos-x64.tar.gz"
      sha256 "a0f2b4b090ecf79982632e77ada6255fd8f17907c8c106f1135a0ae9aeec5b3b"
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
