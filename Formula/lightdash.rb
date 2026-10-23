class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.44.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.44.1/lightdash-cli-3.44.1-macos-arm64.tar.gz"
      sha256 "c311793d291c2185d178fec39dc005eab21aebd990054b53305126aba3aa58f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.44.1/lightdash-cli-3.44.1-macos-x64.tar.gz"
      sha256 "19c9a5bf7ca65c2640735e4c6e551665ed5669fa262bb372698a07fe096b32fa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.44.1/lightdash-cli-3.44.1-linux-x64.tar.gz"
    sha256 "5fe203c0c51bf06f022748f7d5f163e56e78c4582178c2dff040ac8a3dcac0c1"

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
