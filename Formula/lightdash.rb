class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3320.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3320.0/lightdash-cli-0.3320.0-macos-arm64.tar.gz"
      sha256 "fa87a99b33d37a4e78abe5ace48b218923d14a0d892606715fe64f897decf65e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3320.0/lightdash-cli-0.3320.0-macos-x64.tar.gz"
      sha256 "3252bba14c399b83607d3efaa0aa5f68e11dbbaf656e39810fab53894069c5d5"
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
