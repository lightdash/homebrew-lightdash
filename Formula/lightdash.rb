class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2415.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2415.0/lightdash-cli-0.2415.0-macos-arm64.tar.gz"
      sha256 "e54eb6aae62dfe970dd77aef3314552cef7cbe3142a6bda8291c68eb06c7e4d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2415.0/lightdash-cli-0.2415.0-macos-x64.tar.gz"
      sha256 "3718729e525ddd840f1d861e9d91ab56d44c3eb670b2822c88785c031652b971"
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
