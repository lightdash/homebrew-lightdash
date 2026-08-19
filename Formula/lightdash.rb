class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.10/lightdash-cli-1.202.10-macos-arm64.tar.gz"
      sha256 "08981459844e1e8b2ad0ba69d743a244d07e4d3b4c40126bb60c9c94bcf722d2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.10/lightdash-cli-1.202.10-macos-x64.tar.gz"
      sha256 "05d8bbc5c35f441ab93d84be55d3a1243dc0a796e04a3948dd68aa27446958f0"
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
