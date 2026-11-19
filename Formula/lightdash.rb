class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.336.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.336.0/lightdash-cli-3.336.0-macos-arm64.tar.gz"
      sha256 "b8d46a6b9de496424eb200a26ed2672dc171d746d497a84dc869cdc5b9956eb5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.336.0/lightdash-cli-3.336.0-macos-x64.tar.gz"
      sha256 "b12d391c58214fbe3e5a331e8bd2fa5e5ce59951a06a9a552f4ed1eb11334c79"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.336.0/lightdash-cli-3.336.0-linux-x64.tar.gz"
    sha256 "de2060d0d519a372fffda00a6146a77dafe44be31664f93dd6837ae55fa2c8dd"

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
