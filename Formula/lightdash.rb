class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.21.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.4/lightdash-cli-3.21.4-macos-arm64.tar.gz"
      sha256 "6cd43d1f3b909969aeab93a2b84c1f12e52585b1e7fba20d6378b6faf288bc6b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.4/lightdash-cli-3.21.4-macos-x64.tar.gz"
      sha256 "b6a525cb1798a653e9182edaf358ee1dd401dba17b893e2f66f44fe11145370b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.21.4/lightdash-cli-3.21.4-linux-x64.tar.gz"
    sha256 "7dace17dc4a76a502593aa27afdefa7dfa6149144f815199c5fe8fbb9deb44c4"

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
