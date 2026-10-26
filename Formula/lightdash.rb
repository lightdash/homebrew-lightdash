class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.55.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.55.2/lightdash-cli-3.55.2-macos-arm64.tar.gz"
      sha256 "2c2b08b0e5fff5c055809b2e435748e1c682b324e97e36493abb5fe6d7e3dbbd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.55.2/lightdash-cli-3.55.2-macos-x64.tar.gz"
      sha256 "2410545ee0fd915783fb0e1d428dce5bc8e058a6c9101f5b3efc999cf1cab0f9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.55.2/lightdash-cli-3.55.2-linux-x64.tar.gz"
    sha256 "bda556bfb9e06008d7a409e584b1742e271bbad29ba847cadbd8f67d031eae18"

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
