class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.49.0/lightdash-cli-3.49.0-macos-arm64.tar.gz"
      sha256 "91e66bfc502dd6fb261939cb881ad8dc381f197b20cff37eaef18193c23adbec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.49.0/lightdash-cli-3.49.0-macos-x64.tar.gz"
      sha256 "8fdab6395ee7829e7cc4519fc14b2ee294a7c0fb94685565a57563acdcaff411"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.49.0/lightdash-cli-3.49.0-linux-x64.tar.gz"
    sha256 "589728cc81562055dba2e48a23ba1b70934897df0d1c17323ae65719785c6061"

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
