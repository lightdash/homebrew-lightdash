class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.0/lightdash-cli-0.2764.0-macos-arm64.tar.gz"
      sha256 "ad22d4a29f396684e55bd0e35f13655854f45d27921446e7f353f97ba2689ae3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.0/lightdash-cli-0.2764.0-macos-x64.tar.gz"
      sha256 "527307e2fd069742ce6cbc43a2148244e3daa6e37b0b5fb152fb690596999ad8"
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
