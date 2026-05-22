class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3009.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.1/lightdash-cli-0.3009.1-macos-arm64.tar.gz"
      sha256 "ecb95d5f2b03b8b2efe7ea9b87a0e7538f5685ff3d17d3b7a2557a31dc32a31d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.1/lightdash-cli-0.3009.1-macos-x64.tar.gz"
      sha256 "445a0e17c9dca300440e9859042b124c92b40d84e79da08534bca7e0a11b9644"
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
