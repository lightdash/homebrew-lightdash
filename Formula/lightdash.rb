class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.331.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.331.1/lightdash-cli-2.331.1-macos-arm64.tar.gz"
      sha256 "199f5a5647635f6e0854cf3abf1f0cae70a17babb099914db711968573070a06"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.331.1/lightdash-cli-2.331.1-macos-x64.tar.gz"
      sha256 "d707a6f0624a1f4574f358d7862149dd082138996e42a3a4f1f3ffa3c22345f9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.331.1/lightdash-cli-2.331.1-linux-x64.tar.gz"
    sha256 "3e077d183052897ea8f564d3f8c465ee9bf4d7dab619648d8099c362174a82ad"

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
