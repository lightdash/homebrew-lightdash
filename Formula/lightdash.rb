class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2517.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2517.0/lightdash-cli-0.2517.0-macos-arm64.tar.gz"
      sha256 "dd30cf511d2a0b53aabab4db5da344d8e7da5fe8574c77ad49f5abe130b31e5b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2517.0/lightdash-cli-0.2517.0-macos-x64.tar.gz"
      sha256 "3a00b3bd93aac024e74beef95484773739cc9b5b40a0db2ecfce6a13ec49021c"
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
