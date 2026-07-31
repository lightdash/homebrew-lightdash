class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.51.0/lightdash-cli-1.51.0-macos-arm64.tar.gz"
      sha256 "dfc76837ba361f1a4d7dbe41ae396c0dd14ac74ce695e8e989ba1a6df5e6a2ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.51.0/lightdash-cli-1.51.0-macos-x64.tar.gz"
      sha256 "79ae012bb3c975da573def7f80edf8eaa852606e56f330b241f255cabf268f28"
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
