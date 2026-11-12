class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.225.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.225.0/lightdash-cli-3.225.0-macos-arm64.tar.gz"
      sha256 "1f690cdda971e9fd320f094fa36f0b196993cbafa816573859c6cdcdc4284119"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.225.0/lightdash-cli-3.225.0-macos-x64.tar.gz"
      sha256 "df4020dd482014668346703f18f3e1c88f48d89927e7333e263028bc82af1ef9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.225.0/lightdash-cli-3.225.0-linux-x64.tar.gz"
    sha256 "03d5e08522495a66984e2148b9c8a35b99730202cab390c44c8271fbd76c3e94"

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
