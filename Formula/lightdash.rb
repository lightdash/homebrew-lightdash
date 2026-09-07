class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.136.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.136.1/lightdash-cli-2.136.1-macos-arm64.tar.gz"
      sha256 "70a27968976c9426dcc7f1245047328647f4abcf03b97670b3eb34c1d3fcae6e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.136.1/lightdash-cli-2.136.1-macos-x64.tar.gz"
      sha256 "2f84b325ffe76dcbabb0d6f92bfced7d908e4b6b51fd4ad4bf49bf3a07fd8e7d"
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
