class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.206.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.3/lightdash-cli-1.206.3-macos-arm64.tar.gz"
      sha256 "000f1c5bdf12a5b345a2f9cfafc985ed1a162bd61c7b2a8a2fd5f1c8c4e48216"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.3/lightdash-cli-1.206.3-macos-x64.tar.gz"
      sha256 "d874e82a8857bf1521028318820384267288f337d1d9989db9257d3e02523fb6"
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
