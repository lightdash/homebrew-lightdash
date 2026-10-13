class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.575.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.3/lightdash-cli-2.575.3-macos-arm64.tar.gz"
      sha256 "a152bc4504bcfe4cf9902656c5be9f0ca42f460c0cb2bae93a084918446b7fb9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.3/lightdash-cli-2.575.3-macos-x64.tar.gz"
      sha256 "9bd6c5b1f53cf7173fb1438f86a4e80008cd8e7d969e1ab591b6b4a6145e3f6d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.575.3/lightdash-cli-2.575.3-linux-x64.tar.gz"
    sha256 "4a63042e1e608d79e7bd509ca29fd0b62dcdcaabb14705ac041b4385ae330012"

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
