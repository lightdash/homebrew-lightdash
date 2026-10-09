class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.521.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.521.0/lightdash-cli-2.521.0-macos-arm64.tar.gz"
      sha256 "20f1f4d2d93fa4bc5eef2b2d60863e0f0986ab7382aa7d047ba140f23b082e41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.521.0/lightdash-cli-2.521.0-macos-x64.tar.gz"
      sha256 "8b9e0ea9d29122b63bcb327590efdd4bfbdd90beccedd08809da44549b6525a5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.521.0/lightdash-cli-2.521.0-linux-x64.tar.gz"
    sha256 "a0aba9dc4dd9e9c46824a5185fca38c19c3b148629b876f226eb866ebbc103fd"

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
