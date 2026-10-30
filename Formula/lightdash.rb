class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.109.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.109.1/lightdash-cli-3.109.1-macos-arm64.tar.gz"
      sha256 "04e7a004af23237b80a3f5f7e2684121001ed4d98c61a444cd8e6d3ca8a7dd85"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.109.1/lightdash-cli-3.109.1-macos-x64.tar.gz"
      sha256 "373f6406c0aae971a7a65c72092b5547cd3120d709c8533dd67dd5dda3010426"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.109.1/lightdash-cli-3.109.1-linux-x64.tar.gz"
    sha256 "c3a4a9ea448fb632cc29e4a36587af5d11de7f1556bb3d6283ca8ba7d480e467"

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
