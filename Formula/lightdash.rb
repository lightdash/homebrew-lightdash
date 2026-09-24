class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.327.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.327.2/lightdash-cli-2.327.2-macos-arm64.tar.gz"
      sha256 "35ce15a5d893007daeac811c0eafe1baf2295b416700512723e9d455a812b3fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.327.2/lightdash-cli-2.327.2-macos-x64.tar.gz"
      sha256 "16f846dea8a1fe4869d3d75a222aca5c72db043e380cc6b2e90516b80ae493e0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.327.2/lightdash-cli-2.327.2-linux-x64.tar.gz"
    sha256 "1f62c5e85c58a9817ad9f8f1c8106eebd6b1ef5fc9af1977cd5608a3ac58983f"

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
