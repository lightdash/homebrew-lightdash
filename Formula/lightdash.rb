class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.305.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.1/lightdash-cli-2.305.1-macos-arm64.tar.gz"
      sha256 "6757d23c616ca26f576cfc3f0783516e82adbbbd1013c572cbc5bf4a7e448849"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.1/lightdash-cli-2.305.1-macos-x64.tar.gz"
      sha256 "e80a1fa09a251b08366f5413d960643367f07fe142b6425fd0a56b20c7926ebb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.305.1/lightdash-cli-2.305.1-linux-x64.tar.gz"
    sha256 "4fb2ccd8b13aa5b801c3489503c4fe478df01a5578b395bdb8334344d75bc79b"

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
