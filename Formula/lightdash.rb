class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2947.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2947.1/lightdash-cli-0.2947.1-macos-arm64.tar.gz"
      sha256 "2a809a11769786dd20c812f3dc470c209d911fcabe26beecffce93290e82b019"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2947.1/lightdash-cli-0.2947.1-macos-x64.tar.gz"
      sha256 "964dbf6a55c929585acd097a56b3ef87d01e33d3fc814086742de088b88dd6c0"
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
