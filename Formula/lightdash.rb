class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.342.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.1/lightdash-cli-2.342.1-macos-arm64.tar.gz"
      sha256 "622be1b8b46091ae2dc3012500bdc316e16d537271725014e2b9a691eb622613"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.1/lightdash-cli-2.342.1-macos-x64.tar.gz"
      sha256 "3b42ac5e390d1d7dfd18143430c8fd41612a976acc4db1e20ea26705c1f1d1a9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.342.1/lightdash-cli-2.342.1-linux-x64.tar.gz"
    sha256 "c9a73b6d1990ec2f446f25fe7bbf7345ac87b752005974ea2bdf9cd2301e41d3"

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
