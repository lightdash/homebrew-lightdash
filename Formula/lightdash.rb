class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.158.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.158.0/lightdash-cli-1.158.0-macos-arm64.tar.gz"
      sha256 "bdfd674ce9db815f19e961cc1b96e4b89719100b4c47355b8e3d20c993e802cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.158.0/lightdash-cli-1.158.0-macos-x64.tar.gz"
      sha256 "7c62f394d5fb286bac6feb409c16a979b584898c98e60520c2a512004ab0166d"
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
