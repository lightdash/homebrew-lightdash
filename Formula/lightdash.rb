class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.428.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.0/lightdash-cli-2.428.0-macos-arm64.tar.gz"
      sha256 "1a7da6a49b76dad07f3653b12b62d1f8d849f3d50765600fad6bc5ce1e989447"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.0/lightdash-cli-2.428.0-macos-x64.tar.gz"
      sha256 "56980ef88f86556932bd28b26f4b260671bebc4c8de3150280327076fd244dbd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.428.0/lightdash-cli-2.428.0-linux-x64.tar.gz"
    sha256 "5c9326fa8712aa98bea848db56833112af0155127211c719586b8f0fc83fad0f"

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
