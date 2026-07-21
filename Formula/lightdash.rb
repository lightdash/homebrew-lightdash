class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3439.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3439.0/lightdash-cli-0.3439.0-macos-arm64.tar.gz"
      sha256 "c269d98a7222ec7a824c506b6b25baad85f85b653a8ae41b3a3d9950b858c985"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3439.0/lightdash-cli-0.3439.0-macos-x64.tar.gz"
      sha256 "3e838a22e60d75ce89e053765db73fb2318d76525926df59794dc678dd6c5366"
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
