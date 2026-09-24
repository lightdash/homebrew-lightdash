class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.317.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.317.0/lightdash-cli-2.317.0-macos-arm64.tar.gz"
      sha256 "65a753afb2ffc09e14c1beee990efab3edc16046591331e0b9ec60015d9d13ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.317.0/lightdash-cli-2.317.0-macos-x64.tar.gz"
      sha256 "2efa6979e6800c2208303732a0396a782d8fe268c2e3f3c2211a772db089b5f1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.317.0/lightdash-cli-2.317.0-linux-x64.tar.gz"
    sha256 "df2f2570848cfce8cc06aab6536b5d352511addc6900a2e34dfd333889762054"

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
