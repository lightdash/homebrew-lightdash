class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2370.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2370.1/lightdash-cli-0.2370.1-macos-arm64.tar.gz"
      sha256 "b0b051ea85f347258c3d20e0776ef40f665c173fa9f2eb39a4bd1d0334a9b5d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2370.1/lightdash-cli-0.2370.1-macos-x64.tar.gz"
      sha256 "525d46621f6f1ed1952fed3578aa89701338080077fbbda3b53b0d2260e13e89"
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
