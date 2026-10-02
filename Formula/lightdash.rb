class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.418.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.418.0/lightdash-cli-2.418.0-macos-arm64.tar.gz"
      sha256 "200dd8e2b8287845f7acc6e7a8559c2df27483a51b22b06fc67f64ff903cb7ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.418.0/lightdash-cli-2.418.0-macos-x64.tar.gz"
      sha256 "3fc22141004c00207a7858ecf20c090e1d8ac2342b5f68db67b0e7da91df9f6c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.418.0/lightdash-cli-2.418.0-linux-x64.tar.gz"
    sha256 "332c78f8be29037c87e34852dc5b84fb2badca524689ee47a4e2e14991a79c41"

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
