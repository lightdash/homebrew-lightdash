class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.430.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.430.0/lightdash-cli-2.430.0-macos-arm64.tar.gz"
      sha256 "21e91b31966619cd690681e97b1e4fbc43ea530f583c114e69bcfc4e078dff3b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.430.0/lightdash-cli-2.430.0-macos-x64.tar.gz"
      sha256 "5037367ef9f733a3bf7a93bf0ae4fe2bbdc2be8938199d910faf3f4be8a1611a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.430.0/lightdash-cli-2.430.0-linux-x64.tar.gz"
    sha256 "d77c2f03c1bb4a67d8e9d52766083118d4a89f6eff03e93298a1c47ed893719d"

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
