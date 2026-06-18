class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3190.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3190.1/lightdash-cli-0.3190.1-macos-arm64.tar.gz"
      sha256 "137614f1054cfefa73c87ef3a11c70a287da47d337c06be65153ce2c7041aa2c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3190.1/lightdash-cli-0.3190.1-macos-x64.tar.gz"
      sha256 "d0b89c5f8c1cc2769c1df17836afa66f32aae74c1b7dd7357cad91e5c57692c1"
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
