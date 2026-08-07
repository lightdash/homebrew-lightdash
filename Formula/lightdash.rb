class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.102.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.102.0/lightdash-cli-1.102.0-macos-arm64.tar.gz"
      sha256 "7f8acd5e38cbeefc110348ed7a7dbac1170b62ddc58029cb820f173563c3ceb8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.102.0/lightdash-cli-1.102.0-macos-x64.tar.gz"
      sha256 "26a3162154bf9fa39ee78b276aabd823a8164281288e5be91d6e63d4b4d8fdad"
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
