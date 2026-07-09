class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3350.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3350.0/lightdash-cli-0.3350.0-macos-arm64.tar.gz"
      sha256 "35dd880a14a0b334861f3f386efcc7d7ccd690c711d4b1ce96abc4d6e35618bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3350.0/lightdash-cli-0.3350.0-macos-x64.tar.gz"
      sha256 "e649077edca1131822abc7eaa7dc6c82f3a1931081242d34e06abfebc44848f3"
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
