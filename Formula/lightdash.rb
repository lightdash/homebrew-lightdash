class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.216.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.216.0/lightdash-cli-1.216.0-macos-arm64.tar.gz"
      sha256 "a77afee69d97a2284e46f9f876bbc765f6cc3096c137f1d135a3cf5027fae247"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.216.0/lightdash-cli-1.216.0-macos-x64.tar.gz"
      sha256 "7602af98c1051b654f6647cff602de6b4dda5c7f45b4aa4608b0450f34e3b6a4"
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
