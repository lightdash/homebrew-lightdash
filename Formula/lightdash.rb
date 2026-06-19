class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3201.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3201.3/lightdash-cli-0.3201.3-macos-arm64.tar.gz"
      sha256 "7ef3aa93b97f9ff8662080bf880fe6bb99e3c227e429781e4b91a635c3be0f08"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3201.3/lightdash-cli-0.3201.3-macos-x64.tar.gz"
      sha256 "a3a6efc92ba8fd78ddc5176db703bce15f0c124ebe91aab279343bc3379f55b2"
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
