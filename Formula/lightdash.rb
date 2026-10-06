class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.444.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.444.0/lightdash-cli-2.444.0-macos-arm64.tar.gz"
      sha256 "70368d270683107cfbbe59112fd0d96ed876fed196ba832a8582748e6fff820b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.444.0/lightdash-cli-2.444.0-macos-x64.tar.gz"
      sha256 "c88ccf871400724e7e15e3d2ef789c478d614292ee1086a8bab602238874dc71"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.444.0/lightdash-cli-2.444.0-linux-x64.tar.gz"
    sha256 "cc428745b401df0407b8a4de95effcf12d7d5b08ab7ac2c1cc31e579912d6d94"

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
