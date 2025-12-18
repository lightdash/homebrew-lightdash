class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2265.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2265.2/lightdash-cli-0.2265.2-macos-arm64.tar.gz"
      sha256 "09150131f0f3357a7bbba28b47047a01ddb974f4902a839c446bfcfd24b65055"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2265.2/lightdash-cli-0.2265.2-macos-x64.tar.gz"
      sha256 "103608397b740d04936af26a22bfbbbb97e10a4bf382dc0019c8ad340e282718"
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
