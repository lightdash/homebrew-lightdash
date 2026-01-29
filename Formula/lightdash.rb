class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2390.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2390.0/lightdash-cli-0.2390.0-macos-arm64.tar.gz"
      sha256 "c89e283ba3370172ac0003654653225493623f969c127df000c35ee087765943"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2390.0/lightdash-cli-0.2390.0-macos-x64.tar.gz"
      sha256 "907395acb18ce7a3cd7cc53c4f68a80187e2aed74a760223a70d53ef3541e652"
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
