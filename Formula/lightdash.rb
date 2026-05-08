class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.0/lightdash-cli-0.2903.0-macos-arm64.tar.gz"
      sha256 "f1948b569d41765d62b4e70e0e4647d626745c38463b1cbcf6ecb010a5040f9f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.0/lightdash-cli-0.2903.0-macos-x64.tar.gz"
      sha256 "8a1555c4d78e9f7cfc98533beb824d1f25318cb42b974c5f9ce3457c07d81d62"
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
