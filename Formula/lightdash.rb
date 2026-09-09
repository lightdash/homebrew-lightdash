class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.168.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.168.3/lightdash-cli-2.168.3-macos-arm64.tar.gz"
      sha256 "7a8508cf70be3f90c6530bc592ff9b9668d70d61c359d8cc6b88dfcd372966d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.168.3/lightdash-cli-2.168.3-macos-x64.tar.gz"
      sha256 "beec8989fed9fb3615cf2f8de3c06bdd8b7e4d2056bcfe76f094d4805667b3c2"
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
