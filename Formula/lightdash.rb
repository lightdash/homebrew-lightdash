class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.162.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.5/lightdash-cli-1.162.5-macos-arm64.tar.gz"
      sha256 "f14dcfd127588b4c4a1da96fe10a847a20787f3ac3f19f429bd3d42da38402bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.5/lightdash-cli-1.162.5-macos-x64.tar.gz"
      sha256 "44794c9aaa7017399609135eeffcbbc8702d75595cd59529eb0905f5f806ceb7"
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
