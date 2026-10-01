class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.409.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.409.0/lightdash-cli-2.409.0-macos-arm64.tar.gz"
      sha256 "67cd59c1f1eacc48d14d1a6e41d335d9d6cbca53cfa3813e6b7a25497571f623"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.409.0/lightdash-cli-2.409.0-macos-x64.tar.gz"
      sha256 "9f51660285da617b3e2c209d4effba18cfd91461185d13d8c1a1611eace2d025"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.409.0/lightdash-cli-2.409.0-linux-x64.tar.gz"
    sha256 "9e2f253a6ea7992d4cdb929c4bde6318430448b998e091106d961b9caa89395b"

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
