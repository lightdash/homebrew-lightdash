class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.58.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.58.1/lightdash-cli-1.58.1-macos-arm64.tar.gz"
      sha256 "fb71912c0834963a0d0fa8c75f49dd2c5b86da3c99c551560a607f5e74bcbd5c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.58.1/lightdash-cli-1.58.1-macos-x64.tar.gz"
      sha256 "3480438d58fb87752682909989b27331b43378bd4e132107bc7e4453efc83a9c"
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
