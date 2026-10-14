class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.580.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.580.0/lightdash-cli-2.580.0-macos-arm64.tar.gz"
      sha256 "739c51a9875316213d7b6ba9dd5df95e882c6208a91500b5d79176fa1668b738"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.580.0/lightdash-cli-2.580.0-macos-x64.tar.gz"
      sha256 "50280d08328e0e2675fc6d2783fe42870e087f84cc49cc314e5ddab5f67433f6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.580.0/lightdash-cli-2.580.0-linux-x64.tar.gz"
    sha256 "7a401a0691bab2377d73d18ca7c98800df13bd804851abb3aa39503e57bf52a4"

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
