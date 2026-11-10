class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.206.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.206.0/lightdash-cli-3.206.0-macos-arm64.tar.gz"
      sha256 "1a3554dacba9b5fc0d740ab4ba9d6800e45a5271c2c1a369129b75dc580f12c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.206.0/lightdash-cli-3.206.0-macos-x64.tar.gz"
      sha256 "9e73c48ca28959a1f530b9fb88af4e8398e21e768aa21ef190820a56150d6e7a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.206.0/lightdash-cli-3.206.0-linux-x64.tar.gz"
    sha256 "ba1921fd86a00dcab9f1e0a728f5f594fd9a1b7391e46417f74b7767c567cb55"

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
