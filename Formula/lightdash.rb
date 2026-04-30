class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2849.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2849.1/lightdash-cli-0.2849.1-macos-arm64.tar.gz"
      sha256 "9a7177e13866e021081a0d8ef197304b978ac7ba72a0769520bd92ca44ec65e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2849.1/lightdash-cli-0.2849.1-macos-x64.tar.gz"
      sha256 "d45f18a7e0fb5090b58964130e45d8a4557ae25452f50d9a6f59d520b0ffe8a3"
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
