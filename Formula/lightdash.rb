class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2675.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2675.0/lightdash-cli-0.2675.0-macos-arm64.tar.gz"
      sha256 "4e135bee9de0b6b8b69036c6ec9216125e376fdd9ed3d4de76ae5ffdd4570bfd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2675.0/lightdash-cli-0.2675.0-macos-x64.tar.gz"
      sha256 "3ca55e0241cbfe7a71e7a8ffc75365223959321e8e1cfe6d376495496d7776b7"
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
