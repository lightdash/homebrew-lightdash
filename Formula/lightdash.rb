class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3090.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3090.0/lightdash-cli-0.3090.0-macos-arm64.tar.gz"
      sha256 "e8281497e4e4855542d61e4eff27e02bc0e8560948f6942b32abd6be16c66b93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3090.0/lightdash-cli-0.3090.0-macos-x64.tar.gz"
      sha256 "a31ea642f4cb76fb364a395d627c83230bcc30e9fad25c03116c9bd30d7ffe6b"
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
