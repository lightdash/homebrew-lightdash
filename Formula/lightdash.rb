class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.571.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.571.1/lightdash-cli-2.571.1-macos-arm64.tar.gz"
      sha256 "6e3410d025ae581013645316304c90a0913ecd4711a046756fe4ab294c232ccf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.571.1/lightdash-cli-2.571.1-macos-x64.tar.gz"
      sha256 "b27d8d71f304537b14f372a48f29d943aa255796c3de9c49fefbb8a0fa42af98"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.571.1/lightdash-cli-2.571.1-linux-x64.tar.gz"
    sha256 "7a063c8d29e7a410cc3b5eedd67162132eb44ec181ce5cb0aa0a8fa2e1a1de22"

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
