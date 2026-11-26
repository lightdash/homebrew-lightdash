class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.413.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.413.0/lightdash-cli-3.413.0-macos-arm64.tar.gz"
      sha256 "2597785c9e5ccfaf34ab96abe5ae17f3aecd91115311b390ed4d930d938f1aa0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.413.0/lightdash-cli-3.413.0-macos-x64.tar.gz"
      sha256 "8dbff743d39e5bfad0b29d41a1f65365d04a18664be72f7100597777d301bb95"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.413.0/lightdash-cli-3.413.0-linux-x64.tar.gz"
    sha256 "ec4ebc315bf07cea6dcb21a8fd8052ed580dbe22468f2727bd5d20643e80488b"

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
