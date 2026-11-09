class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.181.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.181.2/lightdash-cli-3.181.2-macos-arm64.tar.gz"
      sha256 "6775bbf4cb763992cd85a7dc3315256ab36f9972baac3b408f51e6f71abc96cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.181.2/lightdash-cli-3.181.2-macos-x64.tar.gz"
      sha256 "8c5a9380a0c1ed5e8682d5f3789f614719f0ca98c72aafbde8523f77fd540b1f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.181.2/lightdash-cli-3.181.2-linux-x64.tar.gz"
    sha256 "4db14932c37d6f825ed4f529db0a1713a6264e1d990e83644fc3176ed78d6b90"

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
