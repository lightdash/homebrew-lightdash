class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2950.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.0/lightdash-cli-0.2950.0-macos-arm64.tar.gz"
      sha256 "15c6856556a074fc043d7aa0cb0778a4dff459a467dd028189d242b97f15890b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.0/lightdash-cli-0.2950.0-macos-x64.tar.gz"
      sha256 "a5260467ce61f1322fb55e1363c1179299c7b567eafad7505f0ed8e22f4c0047"
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
