class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.358.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.358.1/lightdash-cli-3.358.1-macos-arm64.tar.gz"
      sha256 "fbabc79e6bf570322073c29ff0a8a720379301588fcc0f2e8889bf7683c9a41d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.358.1/lightdash-cli-3.358.1-macos-x64.tar.gz"
      sha256 "9d7cec10e260f088a89578da853c02f291e53a7656613930bf726fcf014a7c80"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.358.1/lightdash-cli-3.358.1-linux-x64.tar.gz"
    sha256 "13cd885e3a8c258807f2edfb2ffcf7bb9d2bbedc3d306087e41cb1d79f20481d"

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
