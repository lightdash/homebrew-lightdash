class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.466.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.466.0/lightdash-cli-2.466.0-macos-arm64.tar.gz"
      sha256 "e0f3287b8dc858d331acb1e2a97dfc75a89d15ef47c4744a086204f91ec036bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.466.0/lightdash-cli-2.466.0-macos-x64.tar.gz"
      sha256 "358956fb56ebecec07e73a1afbb67909fdc4121accbd132de9bcf5777436c772"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.466.0/lightdash-cli-2.466.0-linux-x64.tar.gz"
    sha256 "df994b8fd5c536bb070d719d907e194cc41ba1b1ba0bdff089969d2dee9a09eb"

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
