class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.53.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.53.1/lightdash-cli-2.53.1-macos-arm64.tar.gz"
      sha256 "742efdfee2eada5819e1ca24528d1a0a827aabfe2ec5a9474b8e6b0af45ea7ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.53.1/lightdash-cli-2.53.1-macos-x64.tar.gz"
      sha256 "3cd2f781f1b0d17cc6e3ab7b469a3b7acc08b7bed3fa099daccb759e129bb557"
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
