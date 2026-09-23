class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.308.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.308.0/lightdash-cli-2.308.0-macos-arm64.tar.gz"
      sha256 "cd09b9fda3d65fee87ba3f493c0ecdedf7bd841a1caf7190b50331ad4fd63257"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.308.0/lightdash-cli-2.308.0-macos-x64.tar.gz"
      sha256 "d658bd3f4b1387b309b3546d172e4f4021d279a202c58cb19a3b511ce1111202"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.308.0/lightdash-cli-2.308.0-linux-x64.tar.gz"
    sha256 "40f1e7a57e624d8fe89219bcbf8864bf73029960412a99fc4268d8e2cbf1c04a"

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
