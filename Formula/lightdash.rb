class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.384.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.384.0/lightdash-cli-3.384.0-macos-arm64.tar.gz"
      sha256 "42d9ac5c0f938d594dc061ef32fe32631841a8c2d734a4f6d53c4b7a2a3d6671"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.384.0/lightdash-cli-3.384.0-macos-x64.tar.gz"
      sha256 "d0e786876155b498b37ec7b5a5176c290a98981d40e339568abb3b2a482bb57b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.384.0/lightdash-cli-3.384.0-linux-x64.tar.gz"
    sha256 "66bcd5f0a6cb392fdda08d8adc465bd0700ccb59d93d009dc5f556f4776fcc0b"

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
