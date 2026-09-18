class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.266.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.266.0/lightdash-cli-2.266.0-macos-arm64.tar.gz"
      sha256 "e7d0a1bcbb0de95c879aa45c3df8a0213f9bff77a064101ba6aa46b584fc3a36"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.266.0/lightdash-cli-2.266.0-macos-x64.tar.gz"
      sha256 "e33aeaa015c19c0507e1c9515064bf7e6931988e7666dadeaba40652ab877b9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.266.0/lightdash-cli-2.266.0-linux-x64.tar.gz"
      sha256 "1dfbeb3598940bf75064fa9d2e4a0173168cbc02c7f55dbcf603bcfb5acaea1e"
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
