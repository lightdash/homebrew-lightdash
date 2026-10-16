class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.598.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.598.0/lightdash-cli-2.598.0-macos-arm64.tar.gz"
      sha256 "d96472faebd1a47efb488e9372b6d5138049a295cba370ee24f386c1df1bbb15"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.598.0/lightdash-cli-2.598.0-macos-x64.tar.gz"
      sha256 "9e40b4b1bc8c8b6d8213694bce118716ec5ca420d646e2d3f37aa1ad5ec05740"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.598.0/lightdash-cli-2.598.0-linux-x64.tar.gz"
    sha256 "e15bb1ad37200e2a86fe5dbc1aa7846a62af46accbd8cfa9d7574d10a7832a75"

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
