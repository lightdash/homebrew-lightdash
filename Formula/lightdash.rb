class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.393.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.393.0/lightdash-cli-2.393.0-macos-arm64.tar.gz"
      sha256 "8a904541693ed49276d114539e008bf42c528bf5538c815fee6e6198ecd77eae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.393.0/lightdash-cli-2.393.0-macos-x64.tar.gz"
      sha256 "36fe84e8c38bc628ac2b06beafad268ef4b3eb571f19b3289ba3d27ec1440e6e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.393.0/lightdash-cli-2.393.0-linux-x64.tar.gz"
    sha256 "04f9446911020b6bf3e96c92d8124f70e5cfb56e6cd7d8f7945805351e9b4e21"

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
