class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.136.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.136.0/lightdash-cli-2.136.0-macos-arm64.tar.gz"
      sha256 "ea955c38c7d496662ead01da7fed56b5868c03e9abdaa0d0252438a7a3d4a466"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.136.0/lightdash-cli-2.136.0-macos-x64.tar.gz"
      sha256 "f59dcc70aebc976ee543a9ae31d7d280033c4cbfed167e439611a397076f2270"
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
