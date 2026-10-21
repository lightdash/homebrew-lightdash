class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.631.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.7/lightdash-cli-2.631.7-macos-arm64.tar.gz"
      sha256 "9ee6f833e06964217727bab05becb5e892f7b2df8a485868bdc24eb3e1980ac3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.7/lightdash-cli-2.631.7-macos-x64.tar.gz"
      sha256 "66b44eb2346c3d76308a0ada93a12db3c3c21e4fa54d35dd5d109a9e83283cfb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.631.7/lightdash-cli-2.631.7-linux-x64.tar.gz"
    sha256 "af8b2ddbbf5ce08861e46b4ffb969234b9cafd767cc23e80a424545747bbd7a2"

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
