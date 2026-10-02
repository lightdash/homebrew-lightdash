class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.415.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.3/lightdash-cli-2.415.3-macos-arm64.tar.gz"
      sha256 "3206bdeb9f86296d8adc964f6dbd7ec31b188fe65d053ad2880869789a65ae60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.3/lightdash-cli-2.415.3-macos-x64.tar.gz"
      sha256 "7813521419b4db61f80a061603c66742c0b523879c827fe69712e84b0e1a54da"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.415.3/lightdash-cli-2.415.3-linux-x64.tar.gz"
    sha256 "0f3f61acf40f85ffb3f8d53f8e01f9da5e91511345d885067f8053741fd9910a"

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
