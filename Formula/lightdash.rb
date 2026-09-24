class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.315.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.315.0/lightdash-cli-2.315.0-macos-arm64.tar.gz"
      sha256 "e5b52f66ccd10f7b41b16cdd10c06dbc3de44007f44bbc98fb8e2cc90c211565"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.315.0/lightdash-cli-2.315.0-macos-x64.tar.gz"
      sha256 "09ecca5edf8243938e8f0c2f9c093815ccf7dcd6642dc453f2253287defcb809"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.315.0/lightdash-cli-2.315.0-linux-x64.tar.gz"
    sha256 "90eb05a5a8a6153ce97982e765922cef4cf6ad6d5bb251efacc8bcf638850b33"

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
