class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.73.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.73.0/lightdash-cli-2.73.0-macos-arm64.tar.gz"
      sha256 "bd3a41348924d485269a5dbb32f6445e27dda43c9eae49c9bea90d3f273c5c77"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.73.0/lightdash-cli-2.73.0-macos-x64.tar.gz"
      sha256 "67614c4ebc5299a302e79440da1b3f4671a740721d5135b1f675e54532933d27"
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
