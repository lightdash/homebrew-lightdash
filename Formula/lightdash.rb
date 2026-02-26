class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2536.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.1/lightdash-cli-0.2536.1-macos-arm64.tar.gz"
      sha256 "e2d5589d0f489c1ead5dcfd170f226fd4873ae8748c484bde2611a908bfa752c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.1/lightdash-cli-0.2536.1-macos-x64.tar.gz"
      sha256 "533f1ea1b96f19eb768d3a00581d14b50af246be90aad656728d1e38f8fd08df"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
