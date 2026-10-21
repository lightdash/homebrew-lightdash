class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.10.0/lightdash-cli-3.10.0-macos-arm64.tar.gz"
      sha256 "6ae89e04e2aad47f1e3fc1503a9e09a7fcb30badcd5529347ac2dba6e896ba3d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.10.0/lightdash-cli-3.10.0-macos-x64.tar.gz"
      sha256 "9b110c4207d10add0b21db92d59d50a944bbe19254224e879ab0c333e48a5971"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.10.0/lightdash-cli-3.10.0-linux-x64.tar.gz"
    sha256 "b417fcf6f7af376d67ac87fe8faa9178c6d6c4fcd90597eb4ba14ad8dd9145e0"

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
