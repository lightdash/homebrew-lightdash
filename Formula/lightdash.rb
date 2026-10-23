class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.39.0/lightdash-cli-3.39.0-macos-arm64.tar.gz"
      sha256 "e48b2ee9924acb4766f47055c58dc323600181b29bc2256f3a02c7cdbd2b7471"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.39.0/lightdash-cli-3.39.0-macos-x64.tar.gz"
      sha256 "04a9cb681e801ececdb695adf3844dcbf3a64f065e72ca043132bf68c92e9b4c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.39.0/lightdash-cli-3.39.0-linux-x64.tar.gz"
    sha256 "c4c33bb18cd3360a082d32e1839b6c327e4385df1f2947b74b82b9925d9fd61b"

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
