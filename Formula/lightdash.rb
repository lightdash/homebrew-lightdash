class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.306.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.306.3/lightdash-cli-3.306.3-macos-arm64.tar.gz"
      sha256 "4cf87e136bf9fb55676e2e9b390ec5643ff9c757b0c29c2140100b89bbdfb099"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.306.3/lightdash-cli-3.306.3-macos-x64.tar.gz"
      sha256 "caf8c2d725fea84c64415d58cf8ef4fe31eb9fc2b78ce357f2ef45cbf9b7e246"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.306.3/lightdash-cli-3.306.3-linux-x64.tar.gz"
    sha256 "9149d4df73bce0798db1634d93f6c2c374242e5cdb5500d7eae0d8e6a05b43f0"

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
