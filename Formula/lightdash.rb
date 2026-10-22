class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.23.0/lightdash-cli-3.23.0-macos-arm64.tar.gz"
      sha256 "6542b5cadb0ffe9eef9248dc8523c8a1fd342079168e0ae58320eccdf1f3d0ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.23.0/lightdash-cli-3.23.0-macos-x64.tar.gz"
      sha256 "f8c8464bf640a74b1e63697dd59104889bc597f3959cf0b4b220ffaff81edd3c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.23.0/lightdash-cli-3.23.0-linux-x64.tar.gz"
    sha256 "fe199d16a36ecac0725efbcd9bff2d417a153c92d366444a51b4389d24378977"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
