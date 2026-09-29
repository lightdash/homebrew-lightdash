class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.379.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.379.1/lightdash-cli-2.379.1-macos-arm64.tar.gz"
      sha256 "6937acdafec945ff5bf684e671b91d055dabb737e0f2fd9b582f833f5ae5739b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.379.1/lightdash-cli-2.379.1-macos-x64.tar.gz"
      sha256 "fc92a5105a09ddfbc9d5c92c25dd0790ada733b4dd9cd565d5a190ea83f578b8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.379.1/lightdash-cli-2.379.1-linux-x64.tar.gz"
    sha256 "45f2a776541c8db365fea23893c136eb5c4db045f4f912f1ddc0e6000ca078d8"

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
