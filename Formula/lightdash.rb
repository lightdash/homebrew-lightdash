class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.119.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.119.0/lightdash-cli-1.119.0-macos-arm64.tar.gz"
      sha256 "cc98637c87d728a96c88f51a46d35daa047eac9680a5765777c86e66ee95268c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.119.0/lightdash-cli-1.119.0-macos-x64.tar.gz"
      sha256 "569fe1bb19d4ef1541e93a8741903fa2bb2435627727d74a0dcf3b1d9e982992"
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
