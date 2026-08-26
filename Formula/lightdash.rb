class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.2.2/lightdash-cli-2.2.2-macos-arm64.tar.gz"
      sha256 "0094ed50870b7821b35b12c922f9948178895569cfe8bd8eb11fc53c62e7b99b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.2.2/lightdash-cli-2.2.2-macos-x64.tar.gz"
      sha256 "f5f383a7599bda7c0fb6e961e53fa1f1e08e56f19599528a6bbdbcedcbacf21a"
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
