class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.385.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.3/lightdash-cli-3.385.3-macos-arm64.tar.gz"
      sha256 "525680a3af1611a353abf372b4aaf54ba39ff5a806087280326a1a614cec6e91"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.3/lightdash-cli-3.385.3-macos-x64.tar.gz"
      sha256 "53e8c6928c958b6c383a8f6eb871781fcba3fcdca2d33e19ad165699215e0278"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.385.3/lightdash-cli-3.385.3-linux-x64.tar.gz"
    sha256 "149eb281392f07a29fbafa1a565b658b1b729de990fc66c59eabdb7377c3c461"

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
