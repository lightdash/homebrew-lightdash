class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.356.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.356.2/lightdash-cli-3.356.2-macos-arm64.tar.gz"
      sha256 "926f2e07dc0c12323cd24460d378b3eea174d8e3e8a42ac5fb8bd03574603a61"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.356.2/lightdash-cli-3.356.2-macos-x64.tar.gz"
      sha256 "120a98dffb319a1ff821a49f02cc0f6046ccbd7f86bc82a9cb998d84a5b03414"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.356.2/lightdash-cli-3.356.2-linux-x64.tar.gz"
    sha256 "3ac9a728875f15322e3e9a4cb2afb2a63f92b936e56ce91a7bbbec5d4bd468ec"

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
