class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.180.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.180.1/lightdash-cli-3.180.1-macos-arm64.tar.gz"
      sha256 "07791c885054adafe237e373c213bd77ea93261f84e382f1b150f7353b963ce6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.180.1/lightdash-cli-3.180.1-macos-x64.tar.gz"
      sha256 "88b5dbd8d4bc90ad6331b043f8a763139c00e4a6bb54719a9944b89d6c5be1b0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.180.1/lightdash-cli-3.180.1-linux-x64.tar.gz"
    sha256 "93afda671a99243acfc72051530c610db99bb161aa4806f00a69fb391297a9c0"

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
