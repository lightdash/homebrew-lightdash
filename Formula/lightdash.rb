class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2893.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2893.2/lightdash-cli-0.2893.2-macos-arm64.tar.gz"
      sha256 "0c2367806cc16dab011e53cce142c58e3a7cfa59d9e714f57fb53d7de064b6f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2893.2/lightdash-cli-0.2893.2-macos-x64.tar.gz"
      sha256 "ea880f84224d5240ce1a3c5c959f00400b7f24da8a5de712f54093812876c91c"
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
