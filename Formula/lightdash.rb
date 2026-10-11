class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.565.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.565.0/lightdash-cli-2.565.0-macos-arm64.tar.gz"
      sha256 "6d162a225e87cc29fbde7781a2f0eb3db2177e0191f224a98e2f79a2c20c5419"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.565.0/lightdash-cli-2.565.0-macos-x64.tar.gz"
      sha256 "d141e76150353ac95299f24b08e93380955c50c3597a2bce4522a188cf095a02"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.565.0/lightdash-cli-2.565.0-linux-x64.tar.gz"
    sha256 "7312f99479f8d09e5ef38cebad9770da46239ab2ffb132a7312e9ce76184967b"

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
