class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2837.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2837.0/lightdash-cli-0.2837.0-macos-arm64.tar.gz"
      sha256 "982d523327384a8fc037ed45eb29b25ddf60aac3a72819706fd5d7a12c0c690c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2837.0/lightdash-cli-0.2837.0-macos-x64.tar.gz"
      sha256 "e6e74e6d05a9b0d26dcaa1bc376aa688b6b5e95cffbcdb4dadc7eb35e08f7257"
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
