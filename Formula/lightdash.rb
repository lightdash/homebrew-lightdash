class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.504.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.504.1/lightdash-cli-2.504.1-macos-arm64.tar.gz"
      sha256 "0173dd75ee05d4a82aedb4ebbc9196b94e79cfc382ca45a7a3d6d5221c20810c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.504.1/lightdash-cli-2.504.1-macos-x64.tar.gz"
      sha256 "87f5650956461abbbe56533ee92535638b2a153c76e4b051d877171141731a16"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.504.1/lightdash-cli-2.504.1-linux-x64.tar.gz"
    sha256 "df5220aeed3eb85a2416c53375815013e04f45317b1795e57174cd616afd8282"

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
