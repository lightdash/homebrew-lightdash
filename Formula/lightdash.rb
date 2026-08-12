class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.137.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.137.0/lightdash-cli-1.137.0-macos-arm64.tar.gz"
      sha256 "cf7ad48d92d659733ca4539d76fc558e35941198984aafafa0459300b529e104"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.137.0/lightdash-cli-1.137.0-macos-x64.tar.gz"
      sha256 "f9d02ac953b15f127d2f0ad3944b09147d29ee6783b65c8f7bf04f1a265f4279"
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
