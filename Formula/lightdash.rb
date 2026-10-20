class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.623.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.623.0/lightdash-cli-2.623.0-macos-arm64.tar.gz"
      sha256 "c07fd8149b51bc52d5868c0eea04d85e9d157ebfa859e8837db1009f40ee6ba4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.623.0/lightdash-cli-2.623.0-macos-x64.tar.gz"
      sha256 "e5efbf21349dc8a68e60401ff5b1d8086aaa4ee12cc235ee6681b9e491ec2a08"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.623.0/lightdash-cli-2.623.0-linux-x64.tar.gz"
    sha256 "54defa026a66238d942c89dd9546071db71257a5de8d080f5d2e477cbd07c7e0"

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
