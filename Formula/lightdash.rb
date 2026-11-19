class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.336.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.336.1/lightdash-cli-3.336.1-macos-arm64.tar.gz"
      sha256 "8f140bd2ddb17546d4b069c89f4dedec58a9f74086bb9c9c940196a6fdc43eef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.336.1/lightdash-cli-3.336.1-macos-x64.tar.gz"
      sha256 "76c01614e7f94f0c3a9fc61a7f5ee657c5ccef236cec25da379f68468a4583dc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.336.1/lightdash-cli-3.336.1-linux-x64.tar.gz"
    sha256 "c1b70a1f3332b7687feff0d0f057d086a53549841cd80ab775f5b579c543b499"

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
