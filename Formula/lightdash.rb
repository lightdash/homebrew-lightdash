class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.2/lightdash-cli-3.420.2-macos-arm64.tar.gz"
      sha256 "d025b6868d2afac5f1bf952911ef8e6a54aa837141dbe3de65e48c37321e55f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.2/lightdash-cli-3.420.2-macos-x64.tar.gz"
      sha256 "cf3094e50f21c2066dc18b5f38adc197dc94b7e8ef00ffaa184acf151f95a1d1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.2/lightdash-cli-3.420.2-linux-x64.tar.gz"
    sha256 "3d11916a550c5b6ab6e131f0d91dc3bc45e59364395a906c7342391e45fac040"

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
