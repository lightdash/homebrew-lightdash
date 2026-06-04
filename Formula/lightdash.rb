class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3092.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3092.2/lightdash-cli-0.3092.2-macos-arm64.tar.gz"
      sha256 "61ce2e02b357a7e17af1afdbadb35ab425aa4dc4f260832eed5e79ca57a5a9d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3092.2/lightdash-cli-0.3092.2-macos-x64.tar.gz"
      sha256 "586d621dabe3b6e4fef59410716101fa3b003bf24445d93ab00528990fbad640"
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
