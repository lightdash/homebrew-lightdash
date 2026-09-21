class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.286.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.4/lightdash-cli-2.286.4-macos-arm64.tar.gz"
      sha256 "ece13a8613eb5d9be6a001d9db3781b352a3e6507a3f95921e1c31fe5953db4f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.4/lightdash-cli-2.286.4-macos-x64.tar.gz"
      sha256 "54a6d4f3ea8280c379bff9ce41dd7ededa95f22df8ee955da31745d55ed7d0d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.4/lightdash-cli-2.286.4-linux-x64.tar.gz"
      sha256 "270547dea28c61ac00d42ec98e4c3bdf73776c19f66e83394bcba220bc86299d"
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
