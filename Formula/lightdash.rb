class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.443.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.443.2/lightdash-cli-2.443.2-macos-arm64.tar.gz"
      sha256 "f862e76f32c3898e0002e623510cdaf6e262bc5292e39a5d3c9f5769c3ca2a0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.443.2/lightdash-cli-2.443.2-macos-x64.tar.gz"
      sha256 "0d0020b3d6e03be69d7d1032ec9719d41e82dc26247d88ed44f74c2bc3548c63"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.443.2/lightdash-cli-2.443.2-linux-x64.tar.gz"
    sha256 "3aaaecae11dc7cc1cabdd172586aebda73be49b2255376a57466efceb119772d"

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
