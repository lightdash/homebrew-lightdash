class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.516.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.516.0/lightdash-cli-2.516.0-macos-arm64.tar.gz"
      sha256 "25f35e41f161a4f97debef00e6c8d38f75bb7958493bd3fa0e63167431cf64ff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.516.0/lightdash-cli-2.516.0-macos-x64.tar.gz"
      sha256 "4d856c9caf08fec9708b14ddaad54326fd2c5bbdb15e21521ec29e0edce94dfb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.516.0/lightdash-cli-2.516.0-linux-x64.tar.gz"
    sha256 "ff30bb6665be7f1f9a7376fff1e7c362abdbfb0a87c1cd7b323c8170074017a6"

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
