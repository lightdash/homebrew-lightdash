class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3005.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3005.1/lightdash-cli-0.3005.1-macos-arm64.tar.gz"
      sha256 "904e7f3ed579f42b0675b0f90ebbe9fb9b7b5841cb0bcff119b9003b9fe3847a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3005.1/lightdash-cli-0.3005.1-macos-x64.tar.gz"
      sha256 "664f146462d546babc18b654b5f459f9d2043188c5801e96dbc0936be50f780d"
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
