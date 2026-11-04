class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.147.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.147.0/lightdash-cli-3.147.0-macos-arm64.tar.gz"
      sha256 "854d3a674db8cbaa5319cc46daf9476c482407c255de6e65c82abc167db2a841"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.147.0/lightdash-cli-3.147.0-macos-x64.tar.gz"
      sha256 "bf75ed9c5e1d8b32ed8a23264b7a973d4ee5416df6ffa67cabf8136dbffa7d54"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.147.0/lightdash-cli-3.147.0-linux-x64.tar.gz"
    sha256 "4f02076c82efe5cea4d58143d508c019fce10d89dedeb2a51c8b867a67aa125d"

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
