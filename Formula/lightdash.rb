class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.141.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.141.0/lightdash-cli-2.141.0-macos-arm64.tar.gz"
      sha256 "fc945cb8cff69d3c2b3a9336372755da856f3c8dcfc78b454b87f2558d4849ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.141.0/lightdash-cli-2.141.0-macos-x64.tar.gz"
      sha256 "066e6305baf1fd29f43516f1cee94125c84b148d41202d7ca7b92931e5d7e082"
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
