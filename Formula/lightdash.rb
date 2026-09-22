class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.293.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.293.2/lightdash-cli-2.293.2-macos-arm64.tar.gz"
      sha256 "c0997f5f6a69825c9c415393e53817fd6c3612baa362da9bef31b7f6943bec26"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.293.2/lightdash-cli-2.293.2-macos-x64.tar.gz"
      sha256 "2677bc925b6ec347ebb2df96c68a12b965c8fec51ed870b97a02d0b7ff2bff6b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.293.2/lightdash-cli-2.293.2-linux-x64.tar.gz"
    sha256 "4baf814772de16e09020be083e3f48f5f255a85d4cd77658d5cd97a008a07db2"

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
