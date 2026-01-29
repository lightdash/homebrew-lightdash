class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2389.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.4/lightdash-cli-0.2389.4-macos-arm64.tar.gz"
      sha256 "acd7c672618efeffa8c8ca97dd95ccbc1457878bb949f59353e40d34e9641630"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.4/lightdash-cli-0.2389.4-macos-x64.tar.gz"
      sha256 "a255dd758e489e64903f36fdfeb829207e586209c99e0f4fc8d963b7c7b9ebb0"
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
