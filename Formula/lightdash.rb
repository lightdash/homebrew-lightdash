class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.120.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.120.0/lightdash-cli-3.120.0-macos-arm64.tar.gz"
      sha256 "5908d121e211a2b507ffba6172e7cc354c431296a1a68e5819cda5737afa6147"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.120.0/lightdash-cli-3.120.0-macos-x64.tar.gz"
      sha256 "db96a1f1032d75328f45a4708eb9f64ead6d017cf082810d92a19f37a8e88803"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.120.0/lightdash-cli-3.120.0-linux-x64.tar.gz"
    sha256 "78ebd2a1eca625b34d60e88e01d70b67955cf250e3415399b53c9c2e0d131286"

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
