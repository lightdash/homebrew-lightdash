class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2251.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.2/lightdash-cli-0.2251.2-macos-arm64.tar.gz"
      sha256 "5a16244b80cdf3c5ef47d99e41edc7dc3728fd79072459e5057047f145ee8fb3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.2/lightdash-cli-0.2251.2-macos-x64.tar.gz"
      sha256 "346723d8d9080836a75b62b713c2510ed648445b6b31ebbdd21d95158cc2b9c9"
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
