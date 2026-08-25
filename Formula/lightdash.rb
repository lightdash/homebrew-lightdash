class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.258.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.4/lightdash-cli-1.258.4-macos-arm64.tar.gz"
      sha256 "f2765b4ae82542cdf8e7ebbebc38f953514472c38366de95e58ac8360c990197"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.4/lightdash-cli-1.258.4-macos-x64.tar.gz"
      sha256 "b516ecc0c33c1e9a3866f0d4f3018fe42940de51de40f20122653931bda38af9"
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
