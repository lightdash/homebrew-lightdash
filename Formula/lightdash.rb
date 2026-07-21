class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3435.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3435.0/lightdash-cli-0.3435.0-macos-arm64.tar.gz"
      sha256 "400da2d39e0807531ae0449ea6ba371246a6b88c34bd23b8209f0a3f28c67a82"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3435.0/lightdash-cli-0.3435.0-macos-x64.tar.gz"
      sha256 "a64584608a268f66349b91b05f7c6de780999935a1e7392530f3e894c00e7f8f"
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
