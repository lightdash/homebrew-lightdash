class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.606.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.4/lightdash-cli-2.606.4-macos-arm64.tar.gz"
      sha256 "8cdd283ca6e592dd85c2c5bd10e30fb1f89716bb1f0f78cf62ed13ec64af16b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.4/lightdash-cli-2.606.4-macos-x64.tar.gz"
      sha256 "5a860faf5dd9cdf2db82457cae6e96a28db9631163a5c28cea044d9a2c2a4ea9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.606.4/lightdash-cli-2.606.4-linux-x64.tar.gz"
    sha256 "73b0f497ad1e0cc942cfcce1dbe851634ad8401dece8910578875f48a608efc4"

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
