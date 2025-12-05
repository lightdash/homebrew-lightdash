class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2228.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2228.0/lightdash-cli-0.2228.0-macos-arm64.tar.gz"
      sha256 "4c6489c6e2d08ed1fca9cf63176bac0de3c08751e9bdbc0b8a6a5de9dfd53798"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2228.0/lightdash-cli-0.2228.0-macos-x64.tar.gz"
      sha256 "24d0dc812ffa911093f3757bfb9737cf43f4b3b5e6e412be983a30a6aa827974"
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
