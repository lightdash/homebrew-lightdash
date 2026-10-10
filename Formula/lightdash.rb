class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.540.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.540.0/lightdash-cli-2.540.0-macos-arm64.tar.gz"
      sha256 "29d507c0d101cccb8052c1a9f08292711912fa14eca0c60dcaf3d0f3f6cfea6b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.540.0/lightdash-cli-2.540.0-macos-x64.tar.gz"
      sha256 "7556482ebfd0171331a641cea89d17be59bb8d5300f72b332e42e13e35f31065"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.540.0/lightdash-cli-2.540.0-linux-x64.tar.gz"
    sha256 "6cdc70a68e7a0e3f0f2479d31c2066b546d4b95205b36ec77bc1f05d86dad1b7"

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
