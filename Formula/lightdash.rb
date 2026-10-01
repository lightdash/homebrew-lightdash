class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.1/lightdash-cli-2.405.1-macos-arm64.tar.gz"
      sha256 "02693fc78620f404d9dcefb1b55eec93402b72eeb7b440cf4772f5f4bb776d0d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.1/lightdash-cli-2.405.1-macos-x64.tar.gz"
      sha256 "910aa647f1679434b0ec44c705d6792a79d685e6f652e54f724d30d3b08e9a38"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.1/lightdash-cli-2.405.1-linux-x64.tar.gz"
    sha256 "ab9f913452fc1f62eae39e25d1c075bf0562d8602b1842299c04c1801e254653"

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
