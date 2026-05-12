class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2919.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2919.0/lightdash-cli-0.2919.0-macos-arm64.tar.gz"
      sha256 "b38a4344cfdbbe4fa8a03153be818dde3aa0483a2f1889c07d10d11f6a5a6efd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2919.0/lightdash-cli-0.2919.0-macos-x64.tar.gz"
      sha256 "751efa745eaf05f828ea67877bac330b1a1a49c701e9830d71ac5f51f44f21a0"
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
