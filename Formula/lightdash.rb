class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.594.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.594.0/lightdash-cli-2.594.0-macos-arm64.tar.gz"
      sha256 "d7ec42a58776af1a8b9e4d1102aae2048852de03223a7411c279e5d3dc94baeb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.594.0/lightdash-cli-2.594.0-macos-x64.tar.gz"
      sha256 "fe4619c7f6da576fadaf9afdcada7760d0efc4d753ac05642e67f4cb2c062c34"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.594.0/lightdash-cli-2.594.0-linux-x64.tar.gz"
    sha256 "047a896031e8d213f8fcc154340b19f57821603893d1d28440fb9764d9d7c862"

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
