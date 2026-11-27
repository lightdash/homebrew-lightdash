class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.7/lightdash-cli-3.420.7-macos-arm64.tar.gz"
      sha256 "3c7d7a0a0ea3bef310c86b42f7c69349db5f36320d4f621dd9500faaad4b7221"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.7/lightdash-cli-3.420.7-macos-x64.tar.gz"
      sha256 "40752bc9d4b9b8091393396a6202d02a7539549064edbbb4380bc2dfa0f15243"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.7/lightdash-cli-3.420.7-linux-x64.tar.gz"
    sha256 "98787f8ea8c353a91c25defe1f1a2c3f4a8c41ab9e739b0b030b8045cf682657"

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
