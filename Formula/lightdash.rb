class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.340.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.340.0/lightdash-cli-2.340.0-macos-arm64.tar.gz"
      sha256 "b6f7a012cda75b1c191db5690b1692b51616dbf5cc19c68ce8968b4986a2d53d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.340.0/lightdash-cli-2.340.0-macos-x64.tar.gz"
      sha256 "b79ea357f7b364bc78024986de4adc92348a828c545b5d9ca72479792d706a6f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.340.0/lightdash-cli-2.340.0-linux-x64.tar.gz"
    sha256 "900f6c033875e53db9bcd5849ac4151a235a13bde23e786a1abc55903213d5db"

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
