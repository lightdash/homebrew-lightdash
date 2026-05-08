class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2904.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.0/lightdash-cli-0.2904.0-macos-arm64.tar.gz"
      sha256 "39e7e66edcdbee09b0fd8044e2f4f3f3bd3589ce8255ba0024eb80cd32110332"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.0/lightdash-cli-0.2904.0-macos-x64.tar.gz"
      sha256 "cb9e2b84f58767daf6ca8d7b3d47d2673b0701ac494cc39146719592da1d6746"
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
