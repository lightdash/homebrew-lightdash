class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.319.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.3/lightdash-cli-2.319.3-macos-arm64.tar.gz"
      sha256 "1e6942ea309996e350c66d40c8c4e7572cc2cba0fcf2147c62e237e0df884959"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.3/lightdash-cli-2.319.3-macos-x64.tar.gz"
      sha256 "e42136d66e67a716fffb5971e5f7079770951a2573676c063067340769fa7fad"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.319.3/lightdash-cli-2.319.3-linux-x64.tar.gz"
    sha256 "83f7d8e6f92eaad9f98e6e76c9d83d8689d16e4ab4cc515a7420bccac38c9923"

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
