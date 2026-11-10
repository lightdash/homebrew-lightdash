class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.204.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.204.1/lightdash-cli-3.204.1-macos-arm64.tar.gz"
      sha256 "29921264f63dba1d491068e5849faa55349bfb55d465b6369ee99a5fbdd76ab5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.204.1/lightdash-cli-3.204.1-macos-x64.tar.gz"
      sha256 "9cb97f7a71c3d49a52c8574916b6d2f7969eeba7f6367332dc6251541ca4f3f1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.204.1/lightdash-cli-3.204.1-linux-x64.tar.gz"
    sha256 "4e31529d2eb3b7b8bb4381d6da771af866b3bdd8dd5e5a1d3eeb260145fac885"

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
