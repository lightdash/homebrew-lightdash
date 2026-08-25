class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.253.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.253.0/lightdash-cli-1.253.0-macos-arm64.tar.gz"
      sha256 "ee956a9bdf6f78679a1741ca34a1ff9422dace3b3524318d94bf104d30f0c3d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.253.0/lightdash-cli-1.253.0-macos-x64.tar.gz"
      sha256 "5ab8906c30d23c8fe7784c7bf0ae0c6d72a284f28e0afb8110f2473822fa6b18"
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
