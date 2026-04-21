class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2769.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2769.1/lightdash-cli-0.2769.1-macos-arm64.tar.gz"
      sha256 "87f3d2ec1c13dc8dafcb4d7d45d1aadb1c10cb75e0fa07a13d13979277a8b8ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2769.1/lightdash-cli-0.2769.1-macos-x64.tar.gz"
      sha256 "480080ce9bd72900bf8d34e50cdf7c43c46fa6fbf7b96aef5d9f36e599dffa8a"
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
