class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2642.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2642.0/lightdash-cli-0.2642.0-macos-arm64.tar.gz"
      sha256 "43e022559f5f3f162ab2ff5fdb759369e30e651be0cfbe9c02563de184605499"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2642.0/lightdash-cli-0.2642.0-macos-x64.tar.gz"
      sha256 "471a06917da65fad78169432605d652c0f15b6d8cc36964dde46808f67d84e31"
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
