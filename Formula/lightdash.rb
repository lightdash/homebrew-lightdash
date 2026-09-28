class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.349.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.349.0/lightdash-cli-2.349.0-macos-arm64.tar.gz"
      sha256 "52892f9489429c98d67883ae01702769bc3362dbc0809076f0e0d13281cb78c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.349.0/lightdash-cli-2.349.0-macos-x64.tar.gz"
      sha256 "9c0c2530f44548b1f8b8ea5b86398b062b02cea5c0db05270e33f406b99f4ca8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.349.0/lightdash-cli-2.349.0-linux-x64.tar.gz"
    sha256 "02349340f1c533919fe2ca67f50aecf3627f0c6878651efab9ff417ca43eda07"

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
