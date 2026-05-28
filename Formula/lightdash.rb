class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3039.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3039.0/lightdash-cli-0.3039.0-macos-arm64.tar.gz"
      sha256 "1904d063b60f4103e9d60b01e624347f4f52250c87296a80bac0b73406e0dba4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3039.0/lightdash-cli-0.3039.0-macos-x64.tar.gz"
      sha256 "ee079f595ad4deef6c2e98619115c16d68a9190d6ea8658248101c649dc00e7b"
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
