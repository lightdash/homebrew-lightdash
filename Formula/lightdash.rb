class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.432.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.432.0/lightdash-cli-3.432.0-macos-arm64.tar.gz"
      sha256 "12106af7c2da0f93a523f326ba34d08fa35a99c442a6404886614cffa1ef071d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.432.0/lightdash-cli-3.432.0-macos-x64.tar.gz"
      sha256 "23fe4bb07b10b5d0921deb0b169d9714c414b939af7d01617debdf890b0be4de"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.432.0/lightdash-cli-3.432.0-linux-x64.tar.gz"
    sha256 "b9d3ef959029bf1afc6e0d2e30ff0aedf9bfecfcaf773f7f09451e8c51b58687"

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
