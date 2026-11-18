class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.305.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.305.1/lightdash-cli-3.305.1-macos-arm64.tar.gz"
      sha256 "fefff65aa48dac3dc23e1fe22d94682817e1b9e415245e9237315b7778b9a24a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.305.1/lightdash-cli-3.305.1-macos-x64.tar.gz"
      sha256 "a8956c51c72fca467745076be06fa6e1cf50e5cbc5d98aa0a11d56aad3e5bdb0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.305.1/lightdash-cli-3.305.1-linux-x64.tar.gz"
    sha256 "6275ce89cb72d49286639095e838b2a6b3bd43de530a2e8414546f74e52d2e68"

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
