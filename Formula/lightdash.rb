class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.413.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.413.0/lightdash-cli-2.413.0-macos-arm64.tar.gz"
      sha256 "64525fae0af898c6638a78be94762f73316160a6fead6ebac1c5233675a4a63b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.413.0/lightdash-cli-2.413.0-macos-x64.tar.gz"
      sha256 "875e34db3a4b7a592777ce540fec74cf4e406f7cbd5a997bb0620858d4f2654a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.413.0/lightdash-cli-2.413.0-linux-x64.tar.gz"
    sha256 "f792e86cfca7089333711e5d526265c354b9b89ff17c4efa67a4de424238198b"

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
