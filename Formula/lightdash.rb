class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.303.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.303.1/lightdash-cli-3.303.1-macos-arm64.tar.gz"
      sha256 "27215e8b17b5373cdc7e05a7cb4339a7afad7b3323bff0d714d525477f522042"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.303.1/lightdash-cli-3.303.1-macos-x64.tar.gz"
      sha256 "d03562ab132493e509ed318fef501885d4cf80e16bdcfd7bffd37ce924c59584"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.303.1/lightdash-cli-3.303.1-linux-x64.tar.gz"
    sha256 "216cf1452f4bb02936a97c8731d8f36324b358cb20b6893473529a104e8b86cd"

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
