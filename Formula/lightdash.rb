class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.215.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.215.1/lightdash-cli-2.215.1-macos-arm64.tar.gz"
      sha256 "1fef4f7ade71334299c8bea83eeefd09d1fa7f555bd1f9fe3b3845d10fced078"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.215.1/lightdash-cli-2.215.1-macos-x64.tar.gz"
      sha256 "f4306b5e826afcc18beeef32f4a7d240e86f6e6c3792559083acae2e547646b6"
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
