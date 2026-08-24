class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.248.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.248.2/lightdash-cli-1.248.2-macos-arm64.tar.gz"
      sha256 "3b03edb8d97919721c5605eaff80707099b1b1b37ea0b97c78e773f6c5de6b92"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.248.2/lightdash-cli-1.248.2-macos-x64.tar.gz"
      sha256 "d34eea300127c1583f54571b16ad718002bc9fc4fd7a1817e7a4712cd9fe2fb0"
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
