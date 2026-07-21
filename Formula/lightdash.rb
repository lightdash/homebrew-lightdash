class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3441.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3441.2/lightdash-cli-0.3441.2-macos-arm64.tar.gz"
      sha256 "2bb8e862f4c363f8ed1bd17757ccda02e2b2eb128f67acda52ec739c42fd158b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3441.2/lightdash-cli-0.3441.2-macos-x64.tar.gz"
      sha256 "ac33aa8d625ca71e409204cefac49289940c9de1de31d88cd06a964fc8771a48"
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
