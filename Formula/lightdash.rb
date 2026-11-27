class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.422.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.422.0/lightdash-cli-3.422.0-macos-arm64.tar.gz"
      sha256 "cf6ef41ff72fc64d5d7579b3ba0fbf566dd8b85589fd1ddb7e255623cc89529d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.422.0/lightdash-cli-3.422.0-macos-x64.tar.gz"
      sha256 "5ff53972a363bfdecf194dfc33aa6add303a65b0cc4deaedbcc8847a327a612c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.422.0/lightdash-cli-3.422.0-linux-x64.tar.gz"
    sha256 "ff6575340db36ed0b26325adf0229133c19d839172869e28c40475e4a032bf0d"

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
