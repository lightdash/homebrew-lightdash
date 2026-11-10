class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.205.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.205.2/lightdash-cli-3.205.2-macos-arm64.tar.gz"
      sha256 "a517d552e608e54cf37379e1d5bc6277efd29a1691766fee83a3b0f626005bd1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.205.2/lightdash-cli-3.205.2-macos-x64.tar.gz"
      sha256 "3f7b50a7b8fcf36de891c5aa732a0ecb535461a79a9b54ac146acb0a20aa0123"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.205.2/lightdash-cli-3.205.2-linux-x64.tar.gz"
    sha256 "6b73e75c8e549af3a05f598b1ca7d69e922f92bf8176f23b82501d5e1bd2391f"

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
