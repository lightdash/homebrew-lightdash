class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.448.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.448.0/lightdash-cli-3.448.0-macos-arm64.tar.gz"
      sha256 "717f62a12b67acd085b9ede2b334e23ce7f0903ff8e1cf6675373da97681fafe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.448.0/lightdash-cli-3.448.0-macos-x64.tar.gz"
      sha256 "133daec70af30918fa1da064da711e9b3232b94e648f24663e74429ebd141f66"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.448.0/lightdash-cli-3.448.0-linux-x64.tar.gz"
    sha256 "c04ad8ecad05c1fa08543674044afd9f8d2dc0503c4d50d0b54ea27bb54f325a"

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
