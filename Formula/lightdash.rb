class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.429.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.429.0/lightdash-cli-3.429.0-macos-arm64.tar.gz"
      sha256 "2f105c30e54e8f515ae240614487e7c21653d78e27668bcdd7c3be99c3a3186c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.429.0/lightdash-cli-3.429.0-macos-x64.tar.gz"
      sha256 "bc847290f9d5d02234c2f935973ae42f27d9ef1559862688c967d9f50f84528f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.429.0/lightdash-cli-3.429.0-linux-x64.tar.gz"
    sha256 "83f12ee2d57e74be860160d779ce1666054a8c22eb318ec7262e2ed414dba1e9"

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
