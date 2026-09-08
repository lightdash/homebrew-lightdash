class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.165.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.165.0/lightdash-cli-2.165.0-macos-arm64.tar.gz"
      sha256 "429a66a81a16a93cd4e00a9cec29a0d8fa4098072af773ca6c5fa2220320d8af"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.165.0/lightdash-cli-2.165.0-macos-x64.tar.gz"
      sha256 "02b112bbe4ebc27ffe43962c9179314210ea545842b5651770d9584071dfb665"
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
