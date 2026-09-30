class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.385.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.385.0/lightdash-cli-2.385.0-macos-arm64.tar.gz"
      sha256 "7fbe62ca842752711cd0d4292313cf47a1f7fc131be2c920f6257707d87d382d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.385.0/lightdash-cli-2.385.0-macos-x64.tar.gz"
      sha256 "fa2dc60a002d4b411d80ad5e5627d515615d0259236e6861c1c3c30ddf66e4b2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.385.0/lightdash-cli-2.385.0-linux-x64.tar.gz"
    sha256 "0742cefccb2e7b9f56acae1bc27e3523092ee3f4ad811feecc174050026483bb"

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
