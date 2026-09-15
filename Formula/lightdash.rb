class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.217.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.3/lightdash-cli-2.217.3-macos-arm64.tar.gz"
      sha256 "ae11bafbda30e1a9c7623a590262096b6cfab5056c5a136cf85d65f1a42eb5a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.3/lightdash-cli-2.217.3-macos-x64.tar.gz"
      sha256 "5e6ecde817f08157874f2d14876881fc379504002374f08832880bdca47daac1"
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
