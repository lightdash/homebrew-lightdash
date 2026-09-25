class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.344.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.6/lightdash-cli-2.344.6-macos-arm64.tar.gz"
      sha256 "b99cb5233db43ec1fcdc4cda808127b249ef9215e70024844a97b681bed0f816"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.6/lightdash-cli-2.344.6-macos-x64.tar.gz"
      sha256 "033f5dba37df9981e4bc20258119d80a94fcc362907f0c1eeb3a83e5c39f9470"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.344.6/lightdash-cli-2.344.6-linux-x64.tar.gz"
    sha256 "21327610952f03d18850a486870e3fb4325af9157cee015379ff38cc1edb519c"

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
