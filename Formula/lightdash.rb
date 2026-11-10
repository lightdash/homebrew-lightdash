class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.203.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.203.0/lightdash-cli-3.203.0-macos-arm64.tar.gz"
      sha256 "72d9b4cd3509871d9d5ebd16e596c3d189cc9b5d9e2a353d06ce7ce4f65a2348"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.203.0/lightdash-cli-3.203.0-macos-x64.tar.gz"
      sha256 "af1a6dc1fbbd5bd8de303e434dfecc84542561dafe8170acb7ead6d2e7cea7ed"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.203.0/lightdash-cli-3.203.0-linux-x64.tar.gz"
    sha256 "62f01e885aed8c9f89fb0b8a81aa1f20e73d4f1c3ce913f316ec2dcc25cd6a28"

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
