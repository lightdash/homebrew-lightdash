class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3384.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3384.0/lightdash-cli-0.3384.0-macos-arm64.tar.gz"
      sha256 "903cf61c8513a16962a154bb039be820d61331ddcaf0ad275a83f88716af3e5e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3384.0/lightdash-cli-0.3384.0-macos-x64.tar.gz"
      sha256 "25066606f95950e7eaab1eb33ce0bba148c5d9452c064e71b08d0331eab4ea89"
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
