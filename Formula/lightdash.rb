class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2927.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2927.1/lightdash-cli-0.2927.1-macos-arm64.tar.gz"
      sha256 "d503451bf1546c0c66d29e1c1806ac9cddb98e198e02dc56150b605593c33aca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2927.1/lightdash-cli-0.2927.1-macos-x64.tar.gz"
      sha256 "a01f0a061c1eca588278d78cbe745d9789663926856aa0b6b2faf30cc2114c5a"
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
