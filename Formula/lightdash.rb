class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.310.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.310.2/lightdash-cli-3.310.2-macos-arm64.tar.gz"
      sha256 "1205aa1ed6faf6b642a1ee88ed7575eee881287ed82c294592b8e3289c1dc1ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.310.2/lightdash-cli-3.310.2-macos-x64.tar.gz"
      sha256 "430fac29d3f7d311ca6a439b8701e316886536394ddd1cebf756b2e2b3149ec1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.310.2/lightdash-cli-3.310.2-linux-x64.tar.gz"
    sha256 "7bd6f36c71077726a836c991a18df4701692d390d530bddd50a4e384feac45db"

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
