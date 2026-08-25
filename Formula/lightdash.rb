class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.258.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.2/lightdash-cli-1.258.2-macos-arm64.tar.gz"
      sha256 "bfd880668d2d93ebfd560de6a2444e585f0290740fa3679ee273a1b218b272a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.2/lightdash-cli-1.258.2-macos-x64.tar.gz"
      sha256 "6102ee50bec2afd42578b63ed5f5f5711db2f0db23b6c3192551e4d41855bbcd"
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
