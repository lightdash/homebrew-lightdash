class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.261.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.261.0/lightdash-cli-2.261.0-macos-arm64.tar.gz"
      sha256 "c9ee3b5f99712990f9b6be600c874b9310e17ebc9115a3c78830aedf4e2e30b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.261.0/lightdash-cli-2.261.0-macos-x64.tar.gz"
      sha256 "9cc71aecae4a477618831b89a56cfbab65f7c3143baee97878e2cdbfe65d6aa5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.261.0/lightdash-cli-2.261.0-linux-x64.tar.gz"
      sha256 "c249af1f08e65ef77bc65c2f0e617f3b6c11701cb996dda48c5f20d8c9ae6981"
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
