class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.542.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.542.0/lightdash-cli-2.542.0-macos-arm64.tar.gz"
      sha256 "dba42c76cb284ad4df76e36d1e7591f37c860b5807c3b004b2c2374e3be17cef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.542.0/lightdash-cli-2.542.0-macos-x64.tar.gz"
      sha256 "dd498867c83ae9728fd3b912e09cd61dc441deda008495c7c77bda4444970201"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.542.0/lightdash-cli-2.542.0-linux-x64.tar.gz"
    sha256 "2ed86d9a46b1b527c1eff96602b335c3687c7842ad53992c18bbe359fd02368e"

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
