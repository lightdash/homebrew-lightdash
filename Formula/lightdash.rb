class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.272.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.1/lightdash-cli-2.272.1-macos-arm64.tar.gz"
      sha256 "4153eb185fb83458e89deb3348988f50e61ffee944b7d42cbf6fc4b4ff233c1f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.1/lightdash-cli-2.272.1-macos-x64.tar.gz"
      sha256 "c1cbcdef04d4452c2c14c9402f41df2079c21009626fa46cbe09d84febe7521f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.1/lightdash-cli-2.272.1-linux-x64.tar.gz"
      sha256 "e9eef79a87bb3194a895c1e141de45ffcd0a64a1fcd5cb943e7a06e86b92f3ba"
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
