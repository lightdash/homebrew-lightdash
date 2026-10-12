class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.565.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.565.3/lightdash-cli-2.565.3-macos-arm64.tar.gz"
      sha256 "bbad5703f0e56956c4028dfa40d935bb172349a9b3ed5a04793663026e4edcc9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.565.3/lightdash-cli-2.565.3-macos-x64.tar.gz"
      sha256 "ec7c3fe040d64616cf375f9ce139045ad54e4b160b9f469844d32441976a4841"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.565.3/lightdash-cli-2.565.3-linux-x64.tar.gz"
    sha256 "0c4b3f4da27a0df2266b4c24ec53d5e482e19d4826bbf8836e38b0ddeb10949f"

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
