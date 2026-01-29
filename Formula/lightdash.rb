class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2398.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2398.0/lightdash-cli-0.2398.0-macos-arm64.tar.gz"
      sha256 "40add7bbdee8f4a899b747572fadb604985aebdb2e31521549cee6851c3b58c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2398.0/lightdash-cli-0.2398.0-macos-x64.tar.gz"
      sha256 "596e608c8be9670eea00d45a789cd8f771e1e6a5479097c6517b5fc83347d9cf"
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
