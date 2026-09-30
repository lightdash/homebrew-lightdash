class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.397.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.397.1/lightdash-cli-2.397.1-macos-arm64.tar.gz"
      sha256 "aac4c4194694a7c3ef2688ea5ef950983b52744f1d98d2aad131f0ef8708d4f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.397.1/lightdash-cli-2.397.1-macos-x64.tar.gz"
      sha256 "2ffe793dc6aa15a1a0b065d08c8c4ab5a85555884341f6044245c3b0ad2df984"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.397.1/lightdash-cli-2.397.1-linux-x64.tar.gz"
    sha256 "cf46ea6420ca596bf957b73de2e036f32ffec7f357ebd5d8772fea53694098eb"

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
