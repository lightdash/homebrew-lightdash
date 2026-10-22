class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.1/lightdash-cli-3.21.1-macos-arm64.tar.gz"
      sha256 "6aa6e5288ea39a60e9062e6bc14aa5c9dc795e788e660c53900b7d986c901373"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.1/lightdash-cli-3.21.1-macos-x64.tar.gz"
      sha256 "7fb1a105d6008c7857a2e0df782ef7060017d484a0a97a6ea57ccdafa7737b4c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.21.1/lightdash-cli-3.21.1-linux-x64.tar.gz"
    sha256 "461405c0e0119adaa562f82edf62625ae5121068ac6fe0be549d3b1d3c204405"

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
