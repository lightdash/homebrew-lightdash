class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2949.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2949.0/lightdash-cli-0.2949.0-macos-arm64.tar.gz"
      sha256 "de7fa4ee65cd8e42bde28a0b309bdae2ede76752da56ef128f683d0c3f8f7a59"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2949.0/lightdash-cli-0.2949.0-macos-x64.tar.gz"
      sha256 "0340c2fd79701630560cabe4a51de4f3aaf2c1da40dd7c31a340032ddf2e4fd6"
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
