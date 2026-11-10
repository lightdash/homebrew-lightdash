class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.192.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.192.0/lightdash-cli-3.192.0-macos-arm64.tar.gz"
      sha256 "fc83b9ccbd74eec0be0d1b1aea6d2a954acd9ee2d01674694026ab09bb9578dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.192.0/lightdash-cli-3.192.0-macos-x64.tar.gz"
      sha256 "ceb91dbbc6ad23cf94ecad853905aaf774da3bcbc2a545efe6dfd92385afbcae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.192.0/lightdash-cli-3.192.0-linux-x64.tar.gz"
    sha256 "2a0db34d7459cb4c3883330348f07a4068dc17f79596a4adf18c6cb89fd13806"

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
