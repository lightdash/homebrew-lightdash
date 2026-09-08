class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.160.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.160.0/lightdash-cli-2.160.0-macos-arm64.tar.gz"
      sha256 "390a3887438b1c60aeb3c232f05436dd5786a4346716621d7d26b1ab30237227"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.160.0/lightdash-cli-2.160.0-macos-x64.tar.gz"
      sha256 "cb15bab0ce64b90cd47322ab3017c383e301dc4e1546e914e27351b2cf69ccde"
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
