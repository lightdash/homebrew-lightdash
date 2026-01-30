class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2405.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2405.0/lightdash-cli-0.2405.0-macos-arm64.tar.gz"
      sha256 "af23698138b5fea8e8ff1dd8760f47afe5b0ad285c3989fa81971666267b9b70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2405.0/lightdash-cli-0.2405.0-macos-x64.tar.gz"
      sha256 "92defd826e57809f342bd4fd0a536b282bb5c3ab49c883878814746529f4498d"
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
