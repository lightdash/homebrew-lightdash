class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.56.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.56.0/lightdash-cli-2.56.0-macos-arm64.tar.gz"
      sha256 "42a0a466feddecec84067390aead1e55f97982a3198fae9add19b22a965dd584"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.56.0/lightdash-cli-2.56.0-macos-x64.tar.gz"
      sha256 "f468e0af08f2aaf6bbeab78f876a89ee3cc22f39dac5dd05b678e59528ce9238"
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
