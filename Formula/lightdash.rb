class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2936.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2936.0/lightdash-cli-0.2936.0-macos-arm64.tar.gz"
      sha256 "6db032c473749d1814946a37bbd82e56725ffd23a338fd1346f9770d46e2af3e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2936.0/lightdash-cli-0.2936.0-macos-x64.tar.gz"
      sha256 "a77761a0f6362b6ce0386f60533d0b6df2e0bef2c99bec437b3b05df79e18bd4"
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
