class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2277.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2277.1/lightdash-cli-0.2277.1-macos-arm64.tar.gz"
      sha256 "705084aa811fdb715ca795f9d95dfbc93324aa4f448c12de520797ed926d59f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2277.1/lightdash-cli-0.2277.1-macos-x64.tar.gz"
      sha256 "e5054eb0398b7acebb6c9131518ac4f567d221b0f0df18b45c9f96a50f675b77"
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
