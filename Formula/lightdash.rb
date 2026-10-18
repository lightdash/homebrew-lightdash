class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.603.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.4/lightdash-cli-2.603.4-macos-arm64.tar.gz"
      sha256 "9c8713d067d69dda86c0bb95117dfcd222560a467867ad96b591b5021fe783c7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.4/lightdash-cli-2.603.4-macos-x64.tar.gz"
      sha256 "dfa23980804ca04ba2b8c9688d2278de6f84485328eb012b9cdf4dd3b471068f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.603.4/lightdash-cli-2.603.4-linux-x64.tar.gz"
    sha256 "41612865271f42bc5c1f0ac07c7984f5a747cc05f2b9733d32048fd1725d3b18"

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
