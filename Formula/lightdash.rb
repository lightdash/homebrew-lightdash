class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.408.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.408.1/lightdash-cli-2.408.1-macos-arm64.tar.gz"
      sha256 "0b9e3478d734a2d03bb8d98812eec2debc5078f2ade8cc2d32789bfcb6c0be6b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.408.1/lightdash-cli-2.408.1-macos-x64.tar.gz"
      sha256 "65235c45010fc03ec638cd134adf768dda912df16404ce7ece48ad21d2c8adb6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.408.1/lightdash-cli-2.408.1-linux-x64.tar.gz"
    sha256 "5d1b4192636f21274c44b2a7a1d3283f83ad25930a5cf34d91d49644ced031d2"

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
