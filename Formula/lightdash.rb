class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.435.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.435.0/lightdash-cli-3.435.0-macos-arm64.tar.gz"
      sha256 "05446eb5ad56827a90ed95db7fea6cfdb1e9cc9ae2e2ec3fca841de3247e3376"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.435.0/lightdash-cli-3.435.0-macos-x64.tar.gz"
      sha256 "3673eb6796611e5eff6b8e076c4950e25b9d871e90a2be776a7cb4cb9cbaaa36"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.435.0/lightdash-cli-3.435.0-linux-x64.tar.gz"
    sha256 "af11333abd2b4f1bd27001889313605c1bc4a95cfdab7981eeb24a099d551f72"

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
