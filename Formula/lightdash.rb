class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.160.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.160.0/lightdash-cli-3.160.0-macos-arm64.tar.gz"
      sha256 "c53f558f13a37d68abad8dc8ff8fa3b8633ed7dd2152d3436bf0cfd0696daff7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.160.0/lightdash-cli-3.160.0-macos-x64.tar.gz"
      sha256 "6dca9f7a5125463c67f20e074a019492f470884435f232b3fc120046aff5785a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.160.0/lightdash-cli-3.160.0-linux-x64.tar.gz"
    sha256 "a6c45fc15ac4a780039f24db478e7bc28a9f4928f71e19e9d53cbcd6a1496243"

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
