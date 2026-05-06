class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2882.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2882.0/lightdash-cli-0.2882.0-macos-arm64.tar.gz"
      sha256 "ab594fe7a39dc3d442d561a53bdea745d24cf79cccc67ba8737ac797be589012"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2882.0/lightdash-cli-0.2882.0-macos-x64.tar.gz"
      sha256 "0bb4d3f18f6f90ea4502b4b17a5180a68b3d58411727b1a8fd209d6741e40fb3"
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
