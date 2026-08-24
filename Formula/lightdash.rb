class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.251.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.5/lightdash-cli-1.251.5-macos-arm64.tar.gz"
      sha256 "d0fbe0c4eded8e3d48d310e8e0b4230decc6094bae2bd96e41e4308d5c954203"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.5/lightdash-cli-1.251.5-macos-x64.tar.gz"
      sha256 "54d81c096d4fa374d7a15e9d3be1bed0abe5541de33fb63835ab5dc318639751"
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
