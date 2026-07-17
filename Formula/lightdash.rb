class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3408.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3408.1/lightdash-cli-0.3408.1-macos-arm64.tar.gz"
      sha256 "467725500aaf00ba68913279747c3d1c7ca4794860af042712be15caa312d29f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3408.1/lightdash-cli-0.3408.1-macos-x64.tar.gz"
      sha256 "df9b3d17a1c847fdc90e0e5bef37169ebd335335756ff845bb534fabff2defc6"
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
