class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3098.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3098.0/lightdash-cli-0.3098.0-macos-arm64.tar.gz"
      sha256 "0f201a1a79d6910f4fca514c5912dcd1c1340002d15447dd10aa8d5568228c30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3098.0/lightdash-cli-0.3098.0-macos-x64.tar.gz"
      sha256 "c31bde8d577923ee5d242eee1dd2a36a3aeb8377bb0dc80cf38f1bce68fdcb2a"
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
