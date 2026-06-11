class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3145.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3145.0/lightdash-cli-0.3145.0-macos-arm64.tar.gz"
      sha256 "da88cbf10a695ecd77c063ed22d33d02f47973a42ead16cba40f265e5bb91e30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3145.0/lightdash-cli-0.3145.0-macos-x64.tar.gz"
      sha256 "f530a77711eabc468ea5713f71335eee8aac3e3515f522ded4f346414e1efac3"
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
