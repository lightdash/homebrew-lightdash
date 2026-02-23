class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2507.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2507.0/lightdash-cli-0.2507.0-macos-arm64.tar.gz"
      sha256 "d3e796610c391c4faf19d1462b4beb3e71849ee4e6678b4792493b0935ee25e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2507.0/lightdash-cli-0.2507.0-macos-x64.tar.gz"
      sha256 "1969e97407d2946219c1c38b1cd287dddda94da24d9af5de4f0302f866abf2d4"
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
