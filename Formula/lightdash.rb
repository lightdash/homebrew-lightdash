class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.21.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.2/lightdash-cli-3.21.2-macos-arm64.tar.gz"
      sha256 "e52e27c97a81ccfaf27dcbe6cb49b485b5765cc615d99e8657f33fa5293081cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.2/lightdash-cli-3.21.2-macos-x64.tar.gz"
      sha256 "3793c51a1953080a7be3e663ed9e42f7bef54a8dc0153c32d7db3e94dda28db9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.21.2/lightdash-cli-3.21.2-linux-x64.tar.gz"
    sha256 "80a2636107b8cfda74459b4518ed80237e9e215729e84ba7a3e1e716d0df712f"

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
