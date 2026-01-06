class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2302.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2302.0/lightdash-cli-0.2302.0-macos-arm64.tar.gz"
      sha256 "4b344aaf83c9ddf61079da8995bce1148166e74fc3034e0830522c15429f76de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2302.0/lightdash-cli-0.2302.0-macos-x64.tar.gz"
      sha256 "03547359736b62c187aa0650744bc0171f877d0652b12802768ad18728bd0905"
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
