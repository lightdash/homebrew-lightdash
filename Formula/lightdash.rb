class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2314.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2314.0/lightdash-cli-0.2314.0-macos-arm64.tar.gz"
      sha256 "aa58600653a18f37f9c075acedda6ddc4ef8c05fa60956e098fe7bb61cf501f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2314.0/lightdash-cli-0.2314.0-macos-x64.tar.gz"
      sha256 "0752cd7a376593c889227eaa985b1b4d66c34221a2fee8327c425548a4abafa6"
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
