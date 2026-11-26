class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.419.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.419.1/lightdash-cli-3.419.1-macos-arm64.tar.gz"
      sha256 "8fd16d10c4c835569ed50c6eca13c20bb3877e75bb88bb06b013ef97fb8bb449"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.419.1/lightdash-cli-3.419.1-macos-x64.tar.gz"
      sha256 "98f963534b1c372c209f74531fc09cb216c6a65d6b0eb0856f0d1a9b18778dc7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.419.1/lightdash-cli-3.419.1-linux-x64.tar.gz"
    sha256 "6ff9a1e08143d0fc1a5f1d89de9ddbbe4ce292595a11d03a768030e8449d4409"

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
