class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.36.0/lightdash-cli-3.36.0-macos-arm64.tar.gz"
      sha256 "72637c3fbde9bb481e89fee489717c0408e6cad590bfd3db44e51b970aa9f6ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.36.0/lightdash-cli-3.36.0-macos-x64.tar.gz"
      sha256 "bf3a7459bf7144d5758ff52058ba16cfb5ce852a9efbee2f0d8faa9f2141113f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.36.0/lightdash-cli-3.36.0-linux-x64.tar.gz"
    sha256 "1dbb88ac7459464388a123238d75e62840dfde4682a186e800d8f551b7710db1"

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
