class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.205.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.205.2/lightdash-cli-2.205.2-macos-arm64.tar.gz"
      sha256 "8080e969b662303adcf1ef598e55cd5316eac7da60fa4ba111edf5a9ad66fcc5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.205.2/lightdash-cli-2.205.2-macos-x64.tar.gz"
      sha256 "656890e153a6519ee97cbd70e516872129c3cd15ce190ff1ba1fecf5c10b5b25"
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
