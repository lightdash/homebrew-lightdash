class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.428.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.428.0/lightdash-cli-3.428.0-macos-arm64.tar.gz"
      sha256 "0fbdbedb0aa2ca9472d9077a32080c564578fa996d0a98c6bb344a55cc5051a5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.428.0/lightdash-cli-3.428.0-macos-x64.tar.gz"
      sha256 "d4de418d11d7452f4de9019501b11df694fcdb3e9526996fbad9cbfafa924d57"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.428.0/lightdash-cli-3.428.0-linux-x64.tar.gz"
    sha256 "8276eb212fd511cda610f308db3937dd5c918d0109dd784021051f53ce1b5260"

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
