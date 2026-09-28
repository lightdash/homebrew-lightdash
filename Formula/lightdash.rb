class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.352.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.7/lightdash-cli-2.352.7-macos-arm64.tar.gz"
      sha256 "be3decd3299a86d1224486edc3bd319a5ebe8bdfcd4d619e577d253427163875"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.7/lightdash-cli-2.352.7-macos-x64.tar.gz"
      sha256 "e25cfb45fcee2030b105c73a1c22a1aa21195962952de6af1e97619eb2fec321"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.352.7/lightdash-cli-2.352.7-linux-x64.tar.gz"
    sha256 "d51a77d3d0da2a3839617aaae0f0ed3f76884d43c7c298477d14ae27687835b8"

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
