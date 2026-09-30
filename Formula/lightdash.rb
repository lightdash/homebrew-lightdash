class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.389.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.1/lightdash-cli-2.389.1-macos-arm64.tar.gz"
      sha256 "70297b4e9c2e3c5a4b876dca200893e7b0611c4aee4c59a2704955df13e0f139"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.1/lightdash-cli-2.389.1-macos-x64.tar.gz"
      sha256 "3e403dbe555cce9263c376290fb742143672a81065e21a4002d73f8eecad0330"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.389.1/lightdash-cli-2.389.1-linux-x64.tar.gz"
    sha256 "a0293c274931d2ca4b0266c3f7a3b7842efd04a898c4b31de7b1bb46313fa23f"

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
