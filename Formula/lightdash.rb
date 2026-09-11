class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.196.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.196.2/lightdash-cli-2.196.2-macos-arm64.tar.gz"
      sha256 "b2b8110dad998456f90b478a81c2967f18fd36e3a0debf36cb40f1c6c9b00473"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.196.2/lightdash-cli-2.196.2-macos-x64.tar.gz"
      sha256 "1cead76efffa6b04601e1f8a4022d36862db1bf560a6b7eaf4515af23ea56a74"
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
