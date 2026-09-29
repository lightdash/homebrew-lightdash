class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.362.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.362.1/lightdash-cli-2.362.1-macos-arm64.tar.gz"
      sha256 "b1765086d11d1994233bc46cf2512a2a255d9395f874e6f26a78f60e2f1d03c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.362.1/lightdash-cli-2.362.1-macos-x64.tar.gz"
      sha256 "90218097300fed3b7f4ccbf9a4b300c4b4c9a19a58a90b16fbd355fb9e5c372c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.362.1/lightdash-cli-2.362.1-linux-x64.tar.gz"
    sha256 "e4235fb71946d850785eb2db8df5ebf67c4eccbc9f931d2a736ab8ac9b640dfd"

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
