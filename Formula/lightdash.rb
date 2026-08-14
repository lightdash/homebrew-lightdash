class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.157.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.3/lightdash-cli-1.157.3-macos-arm64.tar.gz"
      sha256 "4532c2b31be7612314856f172e728888cd5d4ec9f4b81c5c046cb1a30a6ab8ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.3/lightdash-cli-1.157.3-macos-x64.tar.gz"
      sha256 "aa88b54769964d8bde06cd007001295bc4439e935ee61c0cccea199bbd153415"
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
