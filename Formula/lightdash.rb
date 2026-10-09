class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.501.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.501.1/lightdash-cli-2.501.1-macos-arm64.tar.gz"
      sha256 "086a5e7dbf3b288d4ea49364b82af987338ae68498edd68069573ac9d470d66b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.501.1/lightdash-cli-2.501.1-macos-x64.tar.gz"
      sha256 "e8f00cd7e7e749218278a9caf81779df7034d4e897220df4b9cc08cb7d3b2ed6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.501.1/lightdash-cli-2.501.1-linux-x64.tar.gz"
    sha256 "98dd9a484ed2e7ec70e6bf5096df234affa577d0467e777f9579afd3adbab4db"

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
