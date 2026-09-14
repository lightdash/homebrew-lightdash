class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.209.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.209.2/lightdash-cli-2.209.2-macos-arm64.tar.gz"
      sha256 "e907d07ffc3778ab5eca023d0586d1e173ccefdf38c83887b3aba0d738aa7fc0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.209.2/lightdash-cli-2.209.2-macos-x64.tar.gz"
      sha256 "11bdee353ae9e020c9d501dfdcf7f830bcef09db0bde28a137949417b5715ba2"
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
