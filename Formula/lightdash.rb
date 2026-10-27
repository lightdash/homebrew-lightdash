class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.68.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.5/lightdash-cli-3.68.5-macos-arm64.tar.gz"
      sha256 "68e75ed1c6fe5d816d304c765dd692e7caa559ac2016213fcb87fa490ba153a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.5/lightdash-cli-3.68.5-macos-x64.tar.gz"
      sha256 "bf5cb326b69d60b967b7a1dcbbe5df613092010b3aaffaaf32864ce7d20c94a3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.68.5/lightdash-cli-3.68.5-linux-x64.tar.gz"
    sha256 "d36c86cd69bf3dbebecce6427c2b5cea06e394f6a50ffeee534e98cf480295bc"

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
