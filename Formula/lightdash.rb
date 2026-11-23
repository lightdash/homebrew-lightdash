class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.376.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.376.1/lightdash-cli-3.376.1-macos-arm64.tar.gz"
      sha256 "d9a5f14dcc0e640dda443512c4606b836889d2b6d2594531318ccbc16a7b8f93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.376.1/lightdash-cli-3.376.1-macos-x64.tar.gz"
      sha256 "fedb8f13f2baec49d6f41810667937e4a6f8cada8ab8538cc0d3bb0ed5ecfae8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.376.1/lightdash-cli-3.376.1-linux-x64.tar.gz"
    sha256 "478332c062f1c8fbce5590fa6b66698d0f7d323c97899e1a520c48ba2b148f3e"

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
