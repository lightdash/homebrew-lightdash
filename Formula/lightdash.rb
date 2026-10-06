class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.444.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.444.2/lightdash-cli-2.444.2-macos-arm64.tar.gz"
      sha256 "3211c84f70c2c37433d59a4b1fa4dc756e87f45f129014730a2dc248c18672dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.444.2/lightdash-cli-2.444.2-macos-x64.tar.gz"
      sha256 "f25a240791189f4b35cf62235e917140f2a307b600926bd73b4d1b0b35d7ec87"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.444.2/lightdash-cli-2.444.2-linux-x64.tar.gz"
    sha256 "2974615865f3b1d87ef32de66172af8ed960b521c728cdae90aabd59d5fdfe91"

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
