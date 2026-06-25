class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3241.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3241.0/lightdash-cli-0.3241.0-macos-arm64.tar.gz"
      sha256 "7998354be1bb59e766e3f7055684bacd23a9e629cdd647bdfd798e8233b2d6bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3241.0/lightdash-cli-0.3241.0-macos-x64.tar.gz"
      sha256 "4b68e78db3ed2fb88ca05bbe4c842cb217a08a2b54f87642a9d79140ea33f002"
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
