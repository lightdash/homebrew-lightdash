class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2188.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2188.0/lightdash-cli-0.2188.0-macos-arm64.tar.gz"
      sha256 "1de26638b5634134a07f8859fd23252fa6ad246a72e2057a4622459c17b40857"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2188.0/lightdash-cli-0.2188.0-macos-x64.tar.gz"
      sha256 "9afaf903492770bec8c17f9af65f1ae7c0b197061e56686d7c7f1d42d945827e"
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
