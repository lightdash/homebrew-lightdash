class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3052.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3052.0/lightdash-cli-0.3052.0-macos-arm64.tar.gz"
      sha256 "773ecdc7af22210643d9ab5f66b61662eedfe2d3100a34a4f4f660d550757b90"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3052.0/lightdash-cli-0.3052.0-macos-x64.tar.gz"
      sha256 "0c744359aa641529e27e6144d551222852ad717ecfac722be98e64517e27dabc"
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
