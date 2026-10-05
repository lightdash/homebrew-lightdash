class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.427.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.3/lightdash-cli-2.427.3-macos-arm64.tar.gz"
      sha256 "f018ceadce575ee09a5c7b81f48cd82adcf487b823a86635fb48bf6863e61cee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.3/lightdash-cli-2.427.3-macos-x64.tar.gz"
      sha256 "3cc3a80d5545c372f915685e5c173bd99ed5a7414e9e58ffc1ad6c3e77e84788"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.427.3/lightdash-cli-2.427.3-linux-x64.tar.gz"
    sha256 "df96930f9a56a1303239f2e72f52a4f4089b71344dc2cf9a3807ba8caf744910"

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
