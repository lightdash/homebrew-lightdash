class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.119.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.119.0/lightdash-cli-2.119.0-macos-arm64.tar.gz"
      sha256 "31732083ac49e7a3e4c74dd71d5b9485dfb53cebb9fb68c1de5b8dc85a21fe82"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.119.0/lightdash-cli-2.119.0-macos-x64.tar.gz"
      sha256 "179d645a8b43fd6ef5a5b5b03f06944b5fd433d07befabfa752106ed954759a4"
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
