class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.411.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.2/lightdash-cli-3.411.2-macos-arm64.tar.gz"
      sha256 "652809c3236e81e35976e721e38faa16bab692787f636c9c011c02f80b694051"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.2/lightdash-cli-3.411.2-macos-x64.tar.gz"
      sha256 "6833286f1b52abb8c6356fecc3f558f7d4742a96e0c64129c8e0fe1c87ea210c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.411.2/lightdash-cli-3.411.2-linux-x64.tar.gz"
    sha256 "01f9760a9016f8cd05c858d5846e999f50dfe156fbac3aab1b36cc6d330ca78c"

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
