class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.547.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.0/lightdash-cli-2.547.0-macos-arm64.tar.gz"
      sha256 "ce2242598be67d06445aa9bb21f9388bb1fccfb35932880aeadaf65f66d621e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.0/lightdash-cli-2.547.0-macos-x64.tar.gz"
      sha256 "8fdcbf9e94ea9aefafa08fa6220534adc671955c71cc35d83666f02bee605336"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.547.0/lightdash-cli-2.547.0-linux-x64.tar.gz"
    sha256 "34a4582476c379d9dc6a44f3ab3ec5535347685cc0a01ffd4961ad130fa4b33d"

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
