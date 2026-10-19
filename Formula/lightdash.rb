class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.612.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.612.0/lightdash-cli-2.612.0-macos-arm64.tar.gz"
      sha256 "30576c96d39dd2859c94fa92c479bc2be3e23925b16548434fb2293c5f8d8abd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.612.0/lightdash-cli-2.612.0-macos-x64.tar.gz"
      sha256 "aef72d92900ebf45901a8f7b5ca792267b1fb79953584e850e9fdb763cf4d408"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.612.0/lightdash-cli-2.612.0-linux-x64.tar.gz"
    sha256 "411b92c11e54622331ea046086cc7e58e74864c30cf9100304f372f4f3e2bd0a"

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
