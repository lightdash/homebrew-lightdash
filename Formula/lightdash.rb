class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3165.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3165.1/lightdash-cli-0.3165.1-macos-arm64.tar.gz"
      sha256 "23c5fdfbe0f1c65ac6bfa1ec0b07748620a56a0fb96f325dec814786edfea251"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3165.1/lightdash-cli-0.3165.1-macos-x64.tar.gz"
      sha256 "a9f2ff2b67c6305e633f05ef0716ef224d165d1709858385d2f5ff34c01cf4d9"
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
