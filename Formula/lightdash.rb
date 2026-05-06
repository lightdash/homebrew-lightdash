class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2877.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2877.0/lightdash-cli-0.2877.0-macos-arm64.tar.gz"
      sha256 "293bff8d76f1768793d7b839da01548f663de85489cb84a17662e067d4aa2042"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2877.0/lightdash-cli-0.2877.0-macos-x64.tar.gz"
      sha256 "e00268b5ca2927c5f11261d7ba7a10779a4ee1a05945694c1d08a870b2deed33"
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
