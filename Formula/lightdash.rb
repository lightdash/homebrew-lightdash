class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3191.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3191.0/lightdash-cli-0.3191.0-macos-arm64.tar.gz"
      sha256 "96ce5f185b39bb92c95caf841aa3876bd04423552c05adaafc1a4e9bf09c9f25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3191.0/lightdash-cli-0.3191.0-macos-x64.tar.gz"
      sha256 "5f7a6da0c6e301ea3e5e62cb5a88894f9ece076545ad4a0474794d6e91286fe7"
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
