class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.162.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.4/lightdash-cli-2.162.4-macos-arm64.tar.gz"
      sha256 "34a3016142644e281680f76939fa6baed6a248b532cacc78c4276006b63de0ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.4/lightdash-cli-2.162.4-macos-x64.tar.gz"
      sha256 "8ac1c608ad0c601e44fe7702acc7805768808fc6359d5863a67f8e9a9b2ed1d3"
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
