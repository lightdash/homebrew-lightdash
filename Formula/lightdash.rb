class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.133.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.133.0/lightdash-cli-2.133.0-macos-arm64.tar.gz"
      sha256 "10c6284f6b58c0f9ceacb9d05adba0b07dcc2b0494dc37295c6f27de32a7d17d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.133.0/lightdash-cli-2.133.0-macos-x64.tar.gz"
      sha256 "993c11049b6472060fe41cc8cf2d856e9e2ac85752783d3ef2934e02c5917332"
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
