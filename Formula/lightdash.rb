class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.319.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.0/lightdash-cli-2.319.0-macos-arm64.tar.gz"
      sha256 "ae53a133ccfff2b4e84bdc7ac0f31c8919081505eb57f2d6c21cf9a0cbc0774f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.0/lightdash-cli-2.319.0-macos-x64.tar.gz"
      sha256 "7bcc764a086ed91f1aeed6b2e0cfb38dd32dc4ad30acd432f3998732df8249e9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.319.0/lightdash-cli-2.319.0-linux-x64.tar.gz"
    sha256 "191a42f64eb618c43413c2b33e3a3897d3100bc2cd897f6a92f3cbd89655e6e6"

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
