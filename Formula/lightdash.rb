class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.411.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.411.0/lightdash-cli-2.411.0-macos-arm64.tar.gz"
      sha256 "e1c38c14258704257704ef5b3983d643c97abfdff1426480bc59ed023b27d4c4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.411.0/lightdash-cli-2.411.0-macos-x64.tar.gz"
      sha256 "3345f16d603df0d0c83a0a92738a5416c182a182182b2f53dcd7d30b39b58cf3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.411.0/lightdash-cli-2.411.0-linux-x64.tar.gz"
    sha256 "d61a7cfb7086e5a1a52c2b9caf4b558c30b9dcb2c17bfbc59bce927232d51052"

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
