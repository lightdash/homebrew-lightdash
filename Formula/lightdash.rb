class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3015.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3015.0/lightdash-cli-0.3015.0-macos-arm64.tar.gz"
      sha256 "7b97f7892c62f8ae51e14fcbd265e825237b9131980c5e37575c9451a9e9a537"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3015.0/lightdash-cli-0.3015.0-macos-x64.tar.gz"
      sha256 "7944e3fa1539d58a8f4136a5f34339b0601ebd49d6f186b8ea63d5af82a49a47"
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
