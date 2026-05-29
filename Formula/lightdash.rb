class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3048.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3048.0/lightdash-cli-0.3048.0-macos-arm64.tar.gz"
      sha256 "9397a29a010d910fe01a86d2b927637be19e62eab351c63ae8055aa894a4c278"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3048.0/lightdash-cli-0.3048.0-macos-x64.tar.gz"
      sha256 "d8e87d03057742b202fe95b5adfe4c6448bd63c3f3191bb83d394b9213c981ee"
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
