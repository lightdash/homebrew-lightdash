class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.314.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.314.2/lightdash-cli-2.314.2-macos-arm64.tar.gz"
      sha256 "b53f4af52f56723b815f06a9ac69f79631c888fa8741691db652201db968a74b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.314.2/lightdash-cli-2.314.2-macos-x64.tar.gz"
      sha256 "24690a4c6181d13b925bf58c19dc9d5dfb5dff1b12bec6cc5dce674191c2f897"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.314.2/lightdash-cli-2.314.2-linux-x64.tar.gz"
    sha256 "6258901da6ef7e6483018f9ba5d5cdb5cc19fcc1a18d6d76e30bf7a367be22c3"

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
