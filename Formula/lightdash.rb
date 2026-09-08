class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.154.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.154.0/lightdash-cli-2.154.0-macos-arm64.tar.gz"
      sha256 "084cd1457efa6e26ea10cf309a09af6e183e936188983f98b75844bbb7c0527c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.154.0/lightdash-cli-2.154.0-macos-x64.tar.gz"
      sha256 "1968fea4dd047839a3c1f3b65f5c2d85639bd4a13f9d0e5678b510079920a093"
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
