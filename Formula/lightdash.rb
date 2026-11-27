class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.426.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.426.0/lightdash-cli-3.426.0-macos-arm64.tar.gz"
      sha256 "850ee4472e73da13eccc47f7a8198724cebac7145f8a6e6d631bb9cd5cc949d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.426.0/lightdash-cli-3.426.0-macos-x64.tar.gz"
      sha256 "ba33adc059f58a21f59fcac348cec6fd87736994010775885495492b50fb9046"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.426.0/lightdash-cli-3.426.0-linux-x64.tar.gz"
    sha256 "0fd1bfb1d23d15bab34bff6c684f485da46d547636f9e409019edaa7223627b1"

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
