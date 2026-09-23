class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.303.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.303.0/lightdash-cli-2.303.0-macos-arm64.tar.gz"
      sha256 "0bbe112a4dff1369f75ee0c1023f5ead19c6d4caa0a42abd6d6e7a53a6e1a784"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.303.0/lightdash-cli-2.303.0-macos-x64.tar.gz"
      sha256 "53199e305707b628aa0feabb261a3ba760cf2ba61af4901a360e79631b90dfa4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.303.0/lightdash-cli-2.303.0-linux-x64.tar.gz"
    sha256 "b893eb489bba3fa2eccc20ca56c4764337dcc7edef33e80d2fbfb55a9452b459"

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
