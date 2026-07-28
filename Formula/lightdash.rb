class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.2.0/lightdash-cli-1.2.0-macos-arm64.tar.gz"
      sha256 "a7a137f7b267e545395a52d3e7229ea2bf2960bab0c42d21d60522c0d1bd478b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.2.0/lightdash-cli-1.2.0-macos-x64.tar.gz"
      sha256 "7dd2b10f67988862eb73d24109783d47427f0a86ee729cbb1f8191542edd7360"
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
