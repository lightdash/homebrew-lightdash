class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2536.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.0/lightdash-cli-0.2536.0-macos-arm64.tar.gz"
      sha256 "ffbaf60fc3d169a71491a76ae4bcd00733f2bbef69d1c179f6f8e510ed8a1291"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.0/lightdash-cli-0.2536.0-macos-x64.tar.gz"
      sha256 "9c4a2309dc326e6b4871f5dc522dd7f397fb0109ea1e0f1f56c7507aa07203ec"
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
