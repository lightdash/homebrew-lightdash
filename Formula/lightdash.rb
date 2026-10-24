class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.3/lightdash-cli-3.53.3-macos-arm64.tar.gz"
      sha256 "6f4865c41ed07f6057a03cb0b94409dbaf0e404c38bf553b5bb06147217264f4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.3/lightdash-cli-3.53.3-macos-x64.tar.gz"
      sha256 "17dd8abfe82065da6b9778bd3419632fb2b4571085c4d86706a0d6ea6927f998"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.3/lightdash-cli-3.53.3-linux-x64.tar.gz"
    sha256 "47254425c753bbb7af195aa33b6a908ef4f734a282c10d8078266f0e53e12839"

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
