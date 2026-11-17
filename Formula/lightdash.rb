class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.289.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.289.1/lightdash-cli-3.289.1-macos-arm64.tar.gz"
      sha256 "824d9208ddfff859a350d59d4e5cef961702108440812a109e39cf64ef917f2c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.289.1/lightdash-cli-3.289.1-macos-x64.tar.gz"
      sha256 "f8c6a6af32b96f4a47ff8280a78dcbf6dd64554c49da7d8dc0982f6c9b4e014b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.289.1/lightdash-cli-3.289.1-linux-x64.tar.gz"
    sha256 "1dca180ab74de722fe8db28d89f66c768fb14e70542c64dfed8426cca02de820"

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
