class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.338.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.338.0/lightdash-cli-2.338.0-macos-arm64.tar.gz"
      sha256 "c2d8ce8184fece2bd70bd66ab550535ba14a41e85989bbc2df376160bb50ab8f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.338.0/lightdash-cli-2.338.0-macos-x64.tar.gz"
      sha256 "9f0735a01b022be5515e11b010ad2a674bc48be1a4960ff82f78bab5a46e0c3b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.338.0/lightdash-cli-2.338.0-linux-x64.tar.gz"
    sha256 "31c680677e2e28f7527ab9faef41ff38dffd59a784b9efbabea0ef719af0ea2c"

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
