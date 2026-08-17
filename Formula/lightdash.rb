class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.164.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.164.0/lightdash-cli-1.164.0-macos-arm64.tar.gz"
      sha256 "2ef2b3f7dc17b25c2b460c784a01c9211c286bb0d8d1eb603ec55b242d1b07fe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.164.0/lightdash-cli-1.164.0-macos-x64.tar.gz"
      sha256 "82bf3a20a0d255a139c3c1034a3bed8e6ae6d25b9a865f36417d7907d99b642f"
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
