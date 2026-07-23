class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3464.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3464.1/lightdash-cli-0.3464.1-macos-arm64.tar.gz"
      sha256 "c61cdf60d509972b6f1cc0d19e8fca38b9539243b8c047c9f924769afffeb3f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3464.1/lightdash-cli-0.3464.1-macos-x64.tar.gz"
      sha256 "75414ef33e50b6ccf93d2ae1ef0b3de6f1ececfa858d454a3407e847fe6f276e"
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
