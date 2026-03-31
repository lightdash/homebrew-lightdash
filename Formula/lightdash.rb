class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2694.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2694.0/lightdash-cli-0.2694.0-macos-arm64.tar.gz"
      sha256 "075a60200bda49346ea18a84b20cc9cd4f855c2150133221b30712450711bda0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2694.0/lightdash-cli-0.2694.0-macos-x64.tar.gz"
      sha256 "eb8ed0404d7dc04bc3c9ef48aecd0daef1c014c110c17d91ea27551743863649"
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
