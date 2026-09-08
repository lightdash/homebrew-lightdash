class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.162.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.2/lightdash-cli-2.162.2-macos-arm64.tar.gz"
      sha256 "66e968fe75ae537c1b4f194754f416b1b773a1d3f97706edfe13a578f7ec73ba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.2/lightdash-cli-2.162.2-macos-x64.tar.gz"
      sha256 "a7b6548eab4a35ab3db1326dd493d59ca9e8ad5a186e98fb7aefebe58de2a4ca"
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
