class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2430.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2430.1/lightdash-cli-0.2430.1-macos-arm64.tar.gz"
      sha256 "1f13d35d54887ea036e455d27f9c1a6e7b0765f5a97ec8bc58e8e6978d7cdc91"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2430.1/lightdash-cli-0.2430.1-macos-x64.tar.gz"
      sha256 "5bde6f3f97131598676dfdfa2931c3bd802389f75d36465e7572fd04a3c3e6a0"
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
