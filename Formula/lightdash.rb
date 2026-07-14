class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3382.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3382.0/lightdash-cli-0.3382.0-macos-arm64.tar.gz"
      sha256 "5db33be3b4ecb53595c30b2ba493512a23c89633ceb0b236a654ed981e486252"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3382.0/lightdash-cli-0.3382.0-macos-x64.tar.gz"
      sha256 "273dc7e1dd270f9925bc84a0b0aaceeeb3e5913decfa3b461feaa1e9f4fbe52a"
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
