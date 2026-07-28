class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.10.0/lightdash-cli-1.10.0-macos-arm64.tar.gz"
      sha256 "7dde270583a1a02895a603b8d97d4d83080fd82e2daad88a120d5efacf9b61f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.10.0/lightdash-cli-1.10.0-macos-x64.tar.gz"
      sha256 "108d7796a6b7c06ba638879be6c7d5b85423d10d74f0e5c60419de015b66bff8"
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
