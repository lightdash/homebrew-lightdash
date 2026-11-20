class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.350.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.350.0/lightdash-cli-3.350.0-macos-arm64.tar.gz"
      sha256 "e25511d6c45cb182a0dbd2221b67c10d6b20b0a11aabe0693503f196b061e4d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.350.0/lightdash-cli-3.350.0-macos-x64.tar.gz"
      sha256 "2461e5b185971a88ebce994cf3a10e0274c7df65aa5f19e150dae967f119e4ae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.350.0/lightdash-cli-3.350.0-linux-x64.tar.gz"
    sha256 "877ad60e1ee24711fbc56f74d5eb00954c5c3bdf95cba42a3ace4ea01d343ab4"

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
