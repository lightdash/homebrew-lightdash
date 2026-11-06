class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.170.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.170.0/lightdash-cli-3.170.0-macos-arm64.tar.gz"
      sha256 "e0578e5b2bd87c74f5ae4e6257cd9733949e05e0955f8c0b56a3c0e202676a63"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.170.0/lightdash-cli-3.170.0-macos-x64.tar.gz"
      sha256 "9ee60401c5fbf36c5a738fe66c9e8290f31a1e6423a5fe3cb597cc47856661d1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.170.0/lightdash-cli-3.170.0-linux-x64.tar.gz"
    sha256 "70127d6c529845e03617220ddfc022582cdbc7418bedbda26b529c590b87169a"

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
