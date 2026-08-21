class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.231.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.231.0/lightdash-cli-1.231.0-macos-arm64.tar.gz"
      sha256 "768449fd7658d8d033b67ee11a5dc979d453545f383707806a54b2eeaa6af9f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.231.0/lightdash-cli-1.231.0-macos-x64.tar.gz"
      sha256 "a236127d14df2332b6055276cecd88c05303cf4d1e86dd037b6403660848a216"
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
