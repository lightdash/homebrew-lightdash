class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3323.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3323.0/lightdash-cli-0.3323.0-macos-arm64.tar.gz"
      sha256 "3cddd8aefc56bd324dad29b4a80323f2b88c01c2ca96ca6b58a904dbd5e056fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3323.0/lightdash-cli-0.3323.0-macos-x64.tar.gz"
      sha256 "2979fe7d7085174b71982bab3d43ccf18690bcaa06823c2ac14868a78b769b11"
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
