class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.491.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.491.0/lightdash-cli-2.491.0-macos-arm64.tar.gz"
      sha256 "ca29a59f20766507a9589bb1fb3f4c3d16b4fed1dfe9f6eb4d3040843c436403"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.491.0/lightdash-cli-2.491.0-macos-x64.tar.gz"
      sha256 "d22da07082c82faa07236789ee1328e54c204aad47051ce4ce69c6737d93647e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.491.0/lightdash-cli-2.491.0-linux-x64.tar.gz"
    sha256 "79705c7145bfe9220517b9bcae15b5a8bf96a55b363f134489bcd843b5c22a23"

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
