class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.238.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.238.0/lightdash-cli-3.238.0-macos-arm64.tar.gz"
      sha256 "66253c5fee27340dfe4fc273296814b72335823e2333d853336aea42c6e59028"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.238.0/lightdash-cli-3.238.0-macos-x64.tar.gz"
      sha256 "f1cfff23a8563f391780dd8f2b81ae5eb594f9860b7ed81e8e15ad110bd40617"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.238.0/lightdash-cli-3.238.0-linux-x64.tar.gz"
    sha256 "f0a8f48517c69341c3969c4dd52122ad5d4953b318072520e62d0a441ef28002"

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
