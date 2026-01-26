class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2375.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2375.0/lightdash-cli-0.2375.0-macos-arm64.tar.gz"
      sha256 "093da58de771372d5656510ae3e2bd4c252488bc728aa0a8494021f7f1f6c995"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2375.0/lightdash-cli-0.2375.0-macos-x64.tar.gz"
      sha256 "75dddb9becd92e6f81b5aebdcffc975676e00f397bf738192c82843f3799fb17"
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
