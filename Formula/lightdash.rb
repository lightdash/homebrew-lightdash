class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.282.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.282.0/lightdash-cli-2.282.0-macos-arm64.tar.gz"
      sha256 "472da24aee39fd5a02a710a5e694e23f4b26f22f23c0ef3830a632bc84dfa708"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.282.0/lightdash-cli-2.282.0-macos-x64.tar.gz"
      sha256 "8551ce7e8a3ac603baf23994e239e21a53a45e2b3fc63834190d731b1134651d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.282.0/lightdash-cli-2.282.0-linux-x64.tar.gz"
      sha256 "0d2327b4c48e2822e7f709a9513df2dd1c8f6044ccf22ed2696fb6386d8ebd31"
    end
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
