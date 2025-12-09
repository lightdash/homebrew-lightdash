class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2235.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2235.0/lightdash-cli-0.2235.0-macos-arm64.tar.gz"
      sha256 "70965aa61c2beeb6c695320afd9169b90c502823045f6cc02e7a1fd28fe244e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2235.0/lightdash-cli-0.2235.0-macos-x64.tar.gz"
      sha256 "5182fd5901c13e75420e9af90e8516b6544ff5b4f62ec20440597792d5b408e3"
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
