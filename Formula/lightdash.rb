class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.226.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.226.0/lightdash-cli-2.226.0-macos-arm64.tar.gz"
      sha256 "8423ab6c31d5a001434902fbc2ab22847d8557eaa8cc167753b8aba67c702ca5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.226.0/lightdash-cli-2.226.0-macos-x64.tar.gz"
      sha256 "5b5e0e8695b2437ab0925bf9549db6d1aedd9b965d1cbaaa22c659b496245f25"
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
