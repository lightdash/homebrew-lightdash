class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2450.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2450.0/lightdash-cli-0.2450.0-macos-arm64.tar.gz"
      sha256 "c1848ffece9a432d6516188bd0db02bc899f227cff9f9ca2b834d7a45a46a00c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2450.0/lightdash-cli-0.2450.0-macos-x64.tar.gz"
      sha256 "5388b0230deb373a029ce63bebcd83d43c20915ffbd12ef2484edb67bf121d3a"
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
