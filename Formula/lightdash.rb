class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.86.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.86.0/lightdash-cli-2.86.0-macos-arm64.tar.gz"
      sha256 "21c4099d68c1e1f196254b429653e307a2dc443dbc34ab313ab8d2fd42c39fd1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.86.0/lightdash-cli-2.86.0-macos-x64.tar.gz"
      sha256 "3c8e03f1b98f3aac38b858fbe0885679fae91f169f3d74ec6c690c898cc4d0ff"
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
