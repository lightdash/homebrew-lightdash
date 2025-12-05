class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2229.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2229.1/lightdash-cli-0.2229.1-macos-arm64.tar.gz"
      sha256 "fabe2188dfc58e9bbb82639eddc6ed44ff667044d14deff77a2b1febb2d96d42"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2229.1/lightdash-cli-0.2229.1-macos-x64.tar.gz"
      sha256 "ec6fd8c434bcdafb1ce09c1abcff9afb1df8aa5ceab901f6d6542b595cfb1819"
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
