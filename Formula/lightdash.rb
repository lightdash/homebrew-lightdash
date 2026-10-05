class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.428.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.5/lightdash-cli-2.428.5-macos-arm64.tar.gz"
      sha256 "b926ab798d7b534077737de212fd6e6cc43d92ea26fbc90f2412fa7e28f3f8d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.5/lightdash-cli-2.428.5-macos-x64.tar.gz"
      sha256 "34c8c9769c207dc0acc0d4a9faa3c58979a9a16ce4ea9fc00aa6f3e7dd60af46"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.428.5/lightdash-cli-2.428.5-linux-x64.tar.gz"
    sha256 "42a1289dde4c33d1dbdbb990731a250df051509300dc15036ec074612cd64db5"

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
