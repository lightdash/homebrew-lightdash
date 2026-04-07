class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2729.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2729.3/lightdash-cli-0.2729.3-macos-arm64.tar.gz"
      sha256 "eecf691b6c1dd063aadfae0055a60c51ae0fd35b7b05b99f0be9f8bebde981d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2729.3/lightdash-cli-0.2729.3-macos-x64.tar.gz"
      sha256 "e1af3eae165352eac022f530f94c21c549b71ec562e79a73b863d78d0f124058"
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
