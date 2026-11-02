class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.122.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.122.3/lightdash-cli-3.122.3-macos-arm64.tar.gz"
      sha256 "94f8771cf7aa5ebbfff04fe562485a355f3c89447c84029a098485583ccf5395"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.122.3/lightdash-cli-3.122.3-macos-x64.tar.gz"
      sha256 "42bdb6da08531cba3c739ca34baea96feb8fa51bccb4d9e8d4d2ae5ca541a1ef"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.122.3/lightdash-cli-3.122.3-linux-x64.tar.gz"
    sha256 "0ddbce7c3a52f337da3d92eed62d6b27ea4035cb8dd50d6bad285b157f775e8c"

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
