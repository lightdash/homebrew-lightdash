class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.444.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.444.1/lightdash-cli-2.444.1-macos-arm64.tar.gz"
      sha256 "d9f7336a216228806022d395cdf2b69041d87dd5db3b9d6e127a86c27710b4d2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.444.1/lightdash-cli-2.444.1-macos-x64.tar.gz"
      sha256 "5a5e9aeb764c413b238700ced89a8d0ff34fbfc2a1f4b5c7b440d201ab1a5627"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.444.1/lightdash-cli-2.444.1-linux-x64.tar.gz"
    sha256 "2935e1845d59c7d14b44a7de43cd1d65a22c677913a1dcaffc939278196fc45a"

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
