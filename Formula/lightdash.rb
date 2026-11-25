class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.408.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.408.0/lightdash-cli-3.408.0-macos-arm64.tar.gz"
      sha256 "c6022d292490d59d6276103426f75489c6d395b194bd37f012f4e2d3e0768b46"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.408.0/lightdash-cli-3.408.0-macos-x64.tar.gz"
      sha256 "ee7443e72c474aa438da4e11142f7e7cd5c245566fc95eb445fe7c6b300137a6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.408.0/lightdash-cli-3.408.0-linux-x64.tar.gz"
    sha256 "5fae0073659e73bef9397620353683cf6726967b4c97dce4df956c9985c58a9c"

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
