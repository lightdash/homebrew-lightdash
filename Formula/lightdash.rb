class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.146.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.146.1/lightdash-cli-2.146.1-macos-arm64.tar.gz"
      sha256 "edeb2f40f34a3e755bede96f0195a8a1e80ee08cb86478d3ad1bb73a003451a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.146.1/lightdash-cli-2.146.1-macos-x64.tar.gz"
      sha256 "8854273d75e9d6e4e4b15e8e76988bb570913e8eabc90ee98242412263bacaa7"
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
