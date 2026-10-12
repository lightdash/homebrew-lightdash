class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.569.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.569.0/lightdash-cli-2.569.0-macos-arm64.tar.gz"
      sha256 "fb4ae91f00a8aa6e1f80b0756d599132be1bb1f7670beb71369d8c08fdbef4ff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.569.0/lightdash-cli-2.569.0-macos-x64.tar.gz"
      sha256 "1a200e18f05dcc5d5b3d09de4956146e5691ad8bcd78d4800bb2c555bce444cb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.569.0/lightdash-cli-2.569.0-linux-x64.tar.gz"
    sha256 "efd737e5a438e206e134f19ac74c9d48c45a7697580bdefb5546c8df6ccfb31e"

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
