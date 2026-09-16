class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.234.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.234.0/lightdash-cli-2.234.0-macos-arm64.tar.gz"
      sha256 "c3564c39b0ae553ad48d1a61ec76130b233acc967ea6c8dd11e0ea885d94b2ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.234.0/lightdash-cli-2.234.0-macos-x64.tar.gz"
      sha256 "146ae0918c3ba3ea61e29518081504676e875f5ee3017c7c80723644f06ae766"
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
