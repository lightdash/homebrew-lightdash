class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.423.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.423.2/lightdash-cli-2.423.2-macos-arm64.tar.gz"
      sha256 "9518ebf9b7625930c32d79375141841c460995cca8846322378c657889a4e03a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.423.2/lightdash-cli-2.423.2-macos-x64.tar.gz"
      sha256 "b4016b0cf8951dc2d6babf31a03cae5503140c88c214c205186c06ccffea2637"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.423.2/lightdash-cli-2.423.2-linux-x64.tar.gz"
    sha256 "78f693d3532f5d2993c486c6201b9b6e24140c8bbdbc8b103ba2d9d97f9d9590"

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
