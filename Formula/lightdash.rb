class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.338.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.338.1/lightdash-cli-3.338.1-macos-arm64.tar.gz"
      sha256 "7b4f1f52d92c9501c941fdca69dd9304a0e73b54320899a3e2ba85f6671236eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.338.1/lightdash-cli-3.338.1-macos-x64.tar.gz"
      sha256 "d3da349a502e15d215c4a7cd53306d7eb361c5dbeae5bfc607a2f0230e239337"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.338.1/lightdash-cli-3.338.1-linux-x64.tar.gz"
    sha256 "b3d87f696bd2216611b20e78272ab039e4265327042216ef0ed47b9f87cd5ee7"

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
