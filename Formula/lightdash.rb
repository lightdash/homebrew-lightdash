class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2897.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2897.0/lightdash-cli-0.2897.0-macos-arm64.tar.gz"
      sha256 "a666605057e32f5a6e9214ea2040c83d438bd9ca2471f77c01b9fe2ffe6ac492"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2897.0/lightdash-cli-0.2897.0-macos-x64.tar.gz"
      sha256 "4aad5a09cb301ca079b8105d5474d34db5d48d68a82e6af1f07eee6824227782"
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
