class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2424.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2424.0/lightdash-cli-0.2424.0-macos-arm64.tar.gz"
      sha256 "c51e82e5577f222e51ba6b33910cd94fd7ed5da4366af73d73805d40a1c73ae3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2424.0/lightdash-cli-0.2424.0-macos-x64.tar.gz"
      sha256 "890e65988482e22b0aa3dce64834b4e76fe7f574d6e64e1a07e1afda0e5d3215"
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
