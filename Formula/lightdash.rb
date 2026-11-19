class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.340.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.340.0/lightdash-cli-3.340.0-macos-arm64.tar.gz"
      sha256 "717b011e33a4f7132ebcb53650509013dff68d91d8432d6cd2882a0640e0eec1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.340.0/lightdash-cli-3.340.0-macos-x64.tar.gz"
      sha256 "94b58e9a2ca390021ca63f8520bb4fe5e67daddf82ed145e21c4a4652a05377a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.340.0/lightdash-cli-3.340.0-linux-x64.tar.gz"
    sha256 "3bdef266be393b846e06f2fcd3e51b2141515a1247cf88321e6e79205b69c6f2"

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
