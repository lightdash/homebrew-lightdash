class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.352.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.352.0/lightdash-cli-3.352.0-macos-arm64.tar.gz"
      sha256 "5748996823afb3bd3e4f9cf7a5d90c183963e94765d100dfbee55a6501e495a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.352.0/lightdash-cli-3.352.0-macos-x64.tar.gz"
      sha256 "f67543104738a3418e656f4e0b938584261a5be47fe492780ca42bfbc286458a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.352.0/lightdash-cli-3.352.0-linux-x64.tar.gz"
    sha256 "ae3a60f9b3b5ac9eb58abe3cf31e767c4204f7a4b9cc415482aee6d6a9940ea4"

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
