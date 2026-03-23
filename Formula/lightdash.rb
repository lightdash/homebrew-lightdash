class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2647.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2647.1/lightdash-cli-0.2647.1-macos-arm64.tar.gz"
      sha256 "f869eee1238bff4158ce62498d46b6ca7505fd3d91355c5353db29f11d17996a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2647.1/lightdash-cli-0.2647.1-macos-x64.tar.gz"
      sha256 "6febea54900c8f2a6bc54b727e07af3e119603c09a8950215f11d4a70ae8ebc2"
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
