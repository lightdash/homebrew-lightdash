class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.117.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.117.0/lightdash-cli-3.117.0-macos-arm64.tar.gz"
      sha256 "e99af951776a48f0bbbbf61ed3426cf50392702e5066c8bc38cd9388d15c1120"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.117.0/lightdash-cli-3.117.0-macos-x64.tar.gz"
      sha256 "bd7cfab1c287a297db1c7172b406fad98c79d35597372c515ea9a8880a7456d2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.117.0/lightdash-cli-3.117.0-linux-x64.tar.gz"
    sha256 "dc6daefc78bc03d28ff6324cdcf39cb99b1f4654e6c0a00ccfd83ed461ab8c74"

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
