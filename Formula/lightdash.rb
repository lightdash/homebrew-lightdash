class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.118.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.118.0/lightdash-cli-2.118.0-macos-arm64.tar.gz"
      sha256 "5cbbe835453b11545db4513dcf613c67e8bd753248888007e47f7f2949c2b995"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.118.0/lightdash-cli-2.118.0-macos-x64.tar.gz"
      sha256 "111957f726829fb12b797a7f1a24579414fbd76cb2372144757c3fd5ee428a15"
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
