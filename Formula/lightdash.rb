class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2912.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2912.0/lightdash-cli-0.2912.0-macos-arm64.tar.gz"
      sha256 "af403c5c482269bf33335e44e5e58f163163649a16962585379abcf34ed233c4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2912.0/lightdash-cli-0.2912.0-macos-x64.tar.gz"
      sha256 "ea3cbf937e8731bbaf98f211a86851019850f39975c13dbec1953a1b7e058f54"
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
