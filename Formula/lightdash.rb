class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.277.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.277.0/lightdash-cli-2.277.0-macos-arm64.tar.gz"
      sha256 "ae1354742b89acb6c71c783a938e8ae1ba3e6eadbbdebce20c9db130b9bdeeab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.277.0/lightdash-cli-2.277.0-macos-x64.tar.gz"
      sha256 "49ac20ad8e8510234237dab975ffbb8f045b887efe87abfb452ed0e92fb981a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.277.0/lightdash-cli-2.277.0-linux-x64.tar.gz"
      sha256 "4cc408c6fa658aa57c5e5b496682b1a5e4508600baf27405d6f3c6841b2706d6"
    end
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
