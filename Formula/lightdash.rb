class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.589.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.2/lightdash-cli-2.589.2-macos-arm64.tar.gz"
      sha256 "d60d3bb29f7066032cf4195b23586e8b8e984ae21625c50cc7f0fa9814a6785c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.2/lightdash-cli-2.589.2-macos-x64.tar.gz"
      sha256 "22540be02f049afb4e14b21fbd2d0641ea390eb1e3794e491088ecbf1243d718"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.589.2/lightdash-cli-2.589.2-linux-x64.tar.gz"
    sha256 "667b750362ed2dade271483821cae77cd72e674decf468ae4cdf22705ec7a94d"

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
