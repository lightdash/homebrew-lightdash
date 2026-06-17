class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3185.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3185.0/lightdash-cli-0.3185.0-macos-arm64.tar.gz"
      sha256 "0820d0639c019dffac404ce9ccfeb64382599d4e9289ea1ab3bb8f1026ff73c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3185.0/lightdash-cli-0.3185.0-macos-x64.tar.gz"
      sha256 "fcc7ceeaa70d025f216720294bf85eb7f6b4f74179149bb87a71d602ed16e44c"
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
