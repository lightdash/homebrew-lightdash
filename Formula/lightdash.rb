class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.180.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.180.0/lightdash-cli-2.180.0-macos-arm64.tar.gz"
      sha256 "f2e5d2e643e8fc0e126102ef7fd903dc9dc235d0eb040868fd7b8dbe23296943"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.180.0/lightdash-cli-2.180.0-macos-x64.tar.gz"
      sha256 "3879d152ed5a27201ef4b0ad2e84482f45b6abfede174ceffe45b5a0fd256466"
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
