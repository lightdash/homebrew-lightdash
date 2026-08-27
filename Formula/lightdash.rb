class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.36.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.36.1/lightdash-cli-2.36.1-macos-arm64.tar.gz"
      sha256 "abce61aa61e02789c825a4670fe5ec4f5694f623f117c4848e1d0d815ad624a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.36.1/lightdash-cli-2.36.1-macos-x64.tar.gz"
      sha256 "99b6d350eec5f49fe634522fef20139b39016356ed7c264d69defbfbb58827d0"
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
