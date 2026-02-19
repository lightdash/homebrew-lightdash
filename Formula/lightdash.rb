class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2495.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2495.0/lightdash-cli-0.2495.0-macos-arm64.tar.gz"
      sha256 "7886c5a738a565b4f7956d513058e025c9bae524ac7f79b052f11f16e543bca4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2495.0/lightdash-cli-0.2495.0-macos-x64.tar.gz"
      sha256 "c2e0410c649fd6213d430fb066ad778abd121b2cb672744500ede3f67f523f3c"
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
