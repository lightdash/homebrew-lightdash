class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.571.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.571.2/lightdash-cli-2.571.2-macos-arm64.tar.gz"
      sha256 "75bebf51b541047b91b3f511cf3efea89da44f09ba72de935a94fca8f650e63b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.571.2/lightdash-cli-2.571.2-macos-x64.tar.gz"
      sha256 "91ee970b2e4ea6750889ba078c36260abb8569842d179d0db1b24bd3d71ab93c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.571.2/lightdash-cli-2.571.2-linux-x64.tar.gz"
    sha256 "fc916c37fac0ae04c95ca9f84e7bfdcce853e73aec25e4df1d29c6ce15754a80"

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
