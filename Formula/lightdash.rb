class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.370.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.370.0/lightdash-cli-3.370.0-macos-arm64.tar.gz"
      sha256 "73f991cab806667f2354ea0d2d7c36c0e2905dbb864f8a0e712f7674e5ddf762"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.370.0/lightdash-cli-3.370.0-macos-x64.tar.gz"
      sha256 "3b8b28dbd4779cd59088fb7d1b24283b35c4ed47ff18e0620f602b59252477c0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.370.0/lightdash-cli-3.370.0-linux-x64.tar.gz"
    sha256 "4b9fa97a79e4e9260945e529946f7205ce592eaf447daa2388f841ecf739fae9"

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
