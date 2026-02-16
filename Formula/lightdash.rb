class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2469.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2469.0/lightdash-cli-0.2469.0-macos-arm64.tar.gz"
      sha256 "36712c9cbcff10dba2eeb26d3c6b4e036d3b56b0964c927fa1f74440740c53ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2469.0/lightdash-cli-0.2469.0-macos-x64.tar.gz"
      sha256 "698216de98460b17a7fba1ee737fb2239a08920b7c995cf8d00acc56dbfcb342"
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
