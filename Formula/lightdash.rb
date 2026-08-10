class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.110.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.110.0/lightdash-cli-1.110.0-macos-arm64.tar.gz"
      sha256 "fd1dda554214624502e9f168cb8ea1d8eee5563552ec2e557ef6458cd3c1ccd9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.110.0/lightdash-cli-1.110.0-macos-x64.tar.gz"
      sha256 "28b88c1d39f084c619233142c7a7cc4adb15f9da87875742da3619ea3bbce64f"
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
