class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2925.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2925.2/lightdash-cli-0.2925.2-macos-arm64.tar.gz"
      sha256 "b2e2aa68d90147f2bd1fa4e27bc587451682e27ea2f462a5c9f45ffab8dd1c83"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2925.2/lightdash-cli-0.2925.2-macos-x64.tar.gz"
      sha256 "6884938d9a06853feef7c04ddedbe53b2e5b3632a12e42f2c9c7c2cc9d71986d"
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
