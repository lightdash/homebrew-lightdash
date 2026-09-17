class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.244.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.244.0/lightdash-cli-2.244.0-macos-arm64.tar.gz"
      sha256 "27029d1b4726e67d572673fb4746248f8761108416c4e16b70aa8865919291d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.244.0/lightdash-cli-2.244.0-macos-x64.tar.gz"
      sha256 "e284d6b3296f6476b1f5258e8d7208bb1ae4a4285d4288f2b0cbca63d182b5d2"
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
