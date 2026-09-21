class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.273.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.273.0/lightdash-cli-2.273.0-macos-arm64.tar.gz"
      sha256 "f4aed84e82e8b9f5162c8a7283ce04d35e1b5b182e2eef592bdf63505b0689ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.273.0/lightdash-cli-2.273.0-macos-x64.tar.gz"
      sha256 "635f93fc2ab46ebb14c25b81526d593565d491ca4bacefe89ffbb32e92a3ba2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.273.0/lightdash-cli-2.273.0-linux-x64.tar.gz"
      sha256 "62a625dc6dc106dbfa0eed819f26a97dd41e83fee24e2228795d5875a4878ef5"
    end
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
