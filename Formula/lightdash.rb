class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.38.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.38.1/lightdash-cli-1.38.1-macos-arm64.tar.gz"
      sha256 "9d8aea1105a38c016c7b2da965daa67d7bf8a866c912cf3a0cdb480e7d1e1394"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.38.1/lightdash-cli-1.38.1-macos-x64.tar.gz"
      sha256 "694b36103c8b9c792ada723b61886d09eb7bf965f2ac392d1f2887f104ef9854"
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
