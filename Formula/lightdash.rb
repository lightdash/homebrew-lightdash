class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3054.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3054.0/lightdash-cli-0.3054.0-macos-arm64.tar.gz"
      sha256 "070222493a02534558fb9acfcdc22462ed45e73545b4388c16674bda74e0ae8c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3054.0/lightdash-cli-0.3054.0-macos-x64.tar.gz"
      sha256 "d43174ae7a979c7e68c96e2544d51d7ffd91c8c8d70602eb6e1f82a8a222171c"
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
