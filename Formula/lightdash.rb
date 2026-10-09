class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.524.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.524.0/lightdash-cli-2.524.0-macos-arm64.tar.gz"
      sha256 "4acb9a8f24452648b2d7c45a58096cf8e7bb85cb8214b2a05a2b2d85598a23d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.524.0/lightdash-cli-2.524.0-macos-x64.tar.gz"
      sha256 "6e605fbaa2bb0b02db12d10db490516e37e67736cac108acb7c2c6eb218c8a21"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.524.0/lightdash-cli-2.524.0-linux-x64.tar.gz"
    sha256 "bf8838371b0037c035746d9cc8875c3828daad4911d0c1884968203346619358"

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
