class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.36.0/lightdash-cli-1.36.0-macos-arm64.tar.gz"
      sha256 "d6dfeb7dd131820f645f5f0276fb93123c18a84beea0e3254d9842d5400aacb8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.36.0/lightdash-cli-1.36.0-macos-x64.tar.gz"
      sha256 "78a0bf06bcea2648e7b3a5ecec96ecb5f72cc8888ecbd111a8d1724285756ade"
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
