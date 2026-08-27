class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.37.0/lightdash-cli-2.37.0-macos-arm64.tar.gz"
      sha256 "33649b8706c95533bd756072d9b3e854279369ea406be2dd7cbecbdd82ceacc3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.37.0/lightdash-cli-2.37.0-macos-x64.tar.gz"
      sha256 "b4cc51e715fd4186559d884709461624f4045ad9879b59a70f93c2133c7dc13f"
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
