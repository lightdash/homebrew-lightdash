class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.422.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.422.0/lightdash-cli-2.422.0-macos-arm64.tar.gz"
      sha256 "d394084130d5fc858cd9f7d568dcb0567f6d037baa2b549100c5b094862d15c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.422.0/lightdash-cli-2.422.0-macos-x64.tar.gz"
      sha256 "0e3f4eaf5fd9cd6fa8bddb6368aa6c2346aa819bf4c2ae18fb64a1954cd0f0a8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.422.0/lightdash-cli-2.422.0-linux-x64.tar.gz"
    sha256 "92660990fae44ee7e5cb75bc18ba2352a02a1a2eb459a1018efc7b941bb4f522"

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
