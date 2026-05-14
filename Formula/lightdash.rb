class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2934.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2934.0/lightdash-cli-0.2934.0-macos-arm64.tar.gz"
      sha256 "87d917e336876e9bdc005b19ed9ccf274aa68f6fe1777ba7b55f7eecf2ea2855"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2934.0/lightdash-cli-0.2934.0-macos-x64.tar.gz"
      sha256 "ea8258a3ceccd93606ef1238933e489dcb0e8767f7da737dfb5e97c079574bf6"
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
