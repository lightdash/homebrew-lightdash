class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.605.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.2/lightdash-cli-2.605.2-macos-arm64.tar.gz"
      sha256 "15dd130116e3a0a8711ce675ef4efe46b52c887e54f55a65c74dd43eeb4d5629"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.2/lightdash-cli-2.605.2-macos-x64.tar.gz"
      sha256 "09847b6803a4071c0ad8c95eff7d7f4e047228088fd3ce5209a4c1bf4a9e0c20"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.605.2/lightdash-cli-2.605.2-linux-x64.tar.gz"
    sha256 "52935c9330199619f8afbe39c6ca09a6dbcf084ab05fcec94d41789accc4325a"

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
