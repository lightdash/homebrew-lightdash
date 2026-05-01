class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2858.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2858.0/lightdash-cli-0.2858.0-macos-arm64.tar.gz"
      sha256 "0c53419450a93605d174904f56030740eb060ebb00683511b56846e5245afe6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2858.0/lightdash-cli-0.2858.0-macos-x64.tar.gz"
      sha256 "cc1ddaf6220faa35303171f7709c5065ae9a2a16aead74ab5f18af4a70688646"
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
