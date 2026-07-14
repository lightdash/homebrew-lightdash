class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3381.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3381.0/lightdash-cli-0.3381.0-macos-arm64.tar.gz"
      sha256 "adfb1e1de22011650d103e3fde91cfdcf3dfd03752a450ddfb5e3b5b2506c0c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3381.0/lightdash-cli-0.3381.0-macos-x64.tar.gz"
      sha256 "8746127293b7f293cd0dbc64cde3a412d774e35452fbd3e04c344482f23bf817"
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
