class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.389.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.5/lightdash-cli-2.389.5-macos-arm64.tar.gz"
      sha256 "f8c306e35fb310bfea7e4edde43626d421cb2a2f96ba3f28e1c8cc926bd475b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.5/lightdash-cli-2.389.5-macos-x64.tar.gz"
      sha256 "98465604b5db6f43ffd32923e3e56dc26bf0d8146eb5dc3e368880e93dbc0529"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.389.5/lightdash-cli-2.389.5-linux-x64.tar.gz"
    sha256 "3d247340b32fb4285919f990f9e67c03a7f9c76caa635f98cbc7cc7a6562e1de"

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
