class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.142.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.142.1/lightdash-cli-3.142.1-macos-arm64.tar.gz"
      sha256 "f2500a8a7a6d9cf8a2ea1afb3fc267ababdeb7c038e266673d7b6b22f1bc63a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.142.1/lightdash-cli-3.142.1-macos-x64.tar.gz"
      sha256 "f8d0634fa8ee36d3413067b5d4b4586878578359cd658bc5f3138cf49c47c681"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.142.1/lightdash-cli-3.142.1-linux-x64.tar.gz"
    sha256 "f87ad7214057868a688b988bb61da347e5f6cd2072353b5ceabfe3ef40be77e0"

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
