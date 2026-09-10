class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.187.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.187.1/lightdash-cli-2.187.1-macos-arm64.tar.gz"
      sha256 "bb052c6530cc93be30e909a308ab31a5d0a30b5c7f4e25eda383039de50767f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.187.1/lightdash-cli-2.187.1-macos-x64.tar.gz"
      sha256 "6b44df3d277c59f23a629ab5a8f55f65eb63ab879127e6ba806f4e514d468951"
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
