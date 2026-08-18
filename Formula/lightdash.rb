class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.194.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.194.1/lightdash-cli-1.194.1-macos-arm64.tar.gz"
      sha256 "a00f219be257ac6140f73d261c37105cd8ec6fe744e5089ec4de62fd5471a93a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.194.1/lightdash-cli-1.194.1-macos-x64.tar.gz"
      sha256 "3d8a16a4eefcdc9bbec6e44e934361305617bcdd790a6613b7c4662ac5705786"
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
