class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.443.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.443.1/lightdash-cli-2.443.1-macos-arm64.tar.gz"
      sha256 "155698cb2c45a1ebc47c3835d5cc73f1a555c7edc4722bbe5b9309a0b80e1deb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.443.1/lightdash-cli-2.443.1-macos-x64.tar.gz"
      sha256 "89d5f4ac4b24476dc0587d07e411fa27769d76ccc62a01e8551047e60f04f35e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.443.1/lightdash-cli-2.443.1-linux-x64.tar.gz"
    sha256 "512737b43e6160d9c293dc39d377750d60805da79f330946dbe34827096742d8"

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
