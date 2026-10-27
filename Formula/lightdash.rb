class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.69.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.69.2/lightdash-cli-3.69.2-macos-arm64.tar.gz"
      sha256 "45fcdcc008693e2853776e1342cafed9f6726ecc5fde3d8f40007e59bd7320ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.69.2/lightdash-cli-3.69.2-macos-x64.tar.gz"
      sha256 "2cb185549ec7e1f86badbd908688ba47d36cf01c975c29bc94c82e0bb66b4310"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.69.2/lightdash-cli-3.69.2-linux-x64.tar.gz"
    sha256 "82b6cd7b240e38031a4942dfdd8e192e4a9d4182ce6d442b2896227be5a449ca"

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
